#include "Mixer_dsp.h"
#include <3ds.h>
#include <stdio.h>
#include <string.h>

static int audio_initialized = 0;

extern "C" void Pause(u32 ms);

int MixerHardwareDSP::init() {
	m_bufferSize = (1<<15)*m_num_channels;

	if (audio_initialized == 0) {
		if (ndspInit() == 0) {
			Pause(10);
			ndspSetOutputMode(NDSP_OUTPUT_STEREO);
			ndspSetOutputCount(1); // Num of buffers
			printf("Sound init ok!\n");
			audio_initialized++;
		}
		else {
			printf("Sound init failed!\n");
			return -1;
		}
	}
	else {
		audio_initialized++;
	}

	m_soundBuffer = (byte *)linearAlloc(m_bufferSize*2);
	m_bufferPos = 0;
	m_soundPos = 0;
	clear();

	m_initialized = true;

	start();

	//printf("MixerHardwareDSP::init on %d %d %08x\naudio_initialized == %d\n", m_channel, m_num_channels, m_soundBuffer, audio_initialized);
	//svcSleepThread(5000000000);

	return 0;
}

void MixerHardwareDSP::start() {

	if (m_initialized == false || m_playing == true) {
		return;
	}
	clear();
	
	m_start = 0;
	m_lastPos = 0;
	m_soundPos = 0;

	ndspChnSetInterp(m_channel, NDSP_INTERP_NONE);
	ndspChnSetRate(m_channel, float(m_speed));
	ndspChnSetFormat(m_channel, 
		(m_num_channels == 1) ? NDSP_FORMAT_MONO_PCM16 : NDSP_FORMAT_STEREO_PCM16);

	// Create and play a wav buffer
	memset(&m_WavBuf, 0, sizeof(ndspWaveBuf));

	m_WavBuf.data_vaddr = reinterpret_cast<void *>(m_soundBuffer);
	m_WavBuf.nsamples = m_bufferSize/m_num_channels;
	m_WavBuf.looping = true; // Loop enabled
	m_WavBuf.status = NDSP_WBUF_FREE;

	clear();

	ndspChnWaveBufAdd(m_channel, &m_WavBuf);
	m_lastPos = 0;
	Pause(20);
	m_bufferPos = m_soundPos = samplepos();
	m_playing = true;
}

void MixerHardwareDSP::stop() {
	if (!m_initialized) {
		return;
	}

	flush();
	clear();

}

void MixerHardwareDSP::clear() {
	if (!m_initialized) {
		return;
	}
	memset(m_soundBuffer, 0, m_bufferSize*2);
	DSP_FlushDataCache(m_soundBuffer, m_bufferSize*2);
}

void MixerHardwareDSP::shutdown() {
	if (audio_initialized) {
		flush();
		stop();
		if (m_soundBuffer) {
			linearFree(m_soundBuffer);
			m_soundBuffer = 0;
		}
		m_initialized = false;
	}
	audio_initialized--;
	if (audio_initialized == 0) {
		ndspExit();
	}
}

void MixerHardwareDSP::flush() {
	if (m_initialized == false || m_playing == false) {
		return;
	}
	clear();
	ndspChnReset(m_channel);
	Pause(20);

	m_playing = false;
}

byte* MixerHardwareDSP::buffer() {
	return m_soundBuffer;
}

#define TICKS_PER_SEC 268123480.0
//#define TICKS_PER_SEC_LL 268123480LL
#define TICKS_PER_SEC_LL 268111856LL

u64 MixerHardwareDSP::samplepos() {
	if (!m_playing) {
		return 0;
	}
	u32 temp = ndspChnGetSamplePos(m_channel);
	int diff = temp - m_lastPos;
	if (diff < 0) {
		//printf("diff: %d %d %d %d\n", diff, temp, m_lastPos, m_bufferSize / m_num_channels);
		diff += m_bufferSize/m_num_channels;
	}

	m_soundPos += diff;
	m_lastPos = temp;

	return m_soundPos;
}

void MixerHardwareDSP::update(int *pAudioData, int count) {
	int volume = 1;
	int mask = m_bufferSize - 1;

	if (!m_initialized) {
		return;
	}
	if (count <= 0) {
		return;
	}

	if (!m_playing) {
		start();
	}

	u16 *outp = (u16*)m_soundBuffer;
	int pos = (m_bufferPos*m_num_channels) & mask;
	int *p = pAudioData;
	int val;
	m_bufferPos += count;
	if (m_num_channels > 1) {
		while (count--) {
			val = (*p * volume) >> 0;
			p += 1;//step;
			if (val > 0x7fff)
				val = 0x7fff;
			else if (val < (short)0x8000)
				val = (short)0x8000;
			outp[pos++] = val;// >> 8;

			val = (*p * volume) >> 0;
			p += 1;//step;
			if (val > 0x7fff)
				val = 0x7fff;
			else if (val < (short)0x8000)
				val = (short)0x8000;
			outp[pos++] = val;// >> 8;
			pos &= mask;
		}
	}
	else {
		while (count--) {
			val = (*p * volume) >> 0;
			p += 2;//step;
			if (val > 0x7fff)
				val = 0x7fff;
			else if (val < (short)0x8000)
				val = (short)0x8000;
			outp[pos] = val;// (val >> 8);
			pos = (pos + 1) & mask;
		}
	}
	DSP_FlushDataCache(m_soundBuffer, m_bufferSize*2);
	//printf("upd int: %08x %8d\n", pAudioData, count);
}

void MixerHardwareDSP::update(short *pAudioData, int count)
{
	int volume = 1;
	int mask = m_bufferSize - 1;

	if (!m_initialized) {
		return;
	}
	if (count <= 0) {
		return;
	}

	if (!m_playing) {
		start();
	}

	int pos = (m_bufferPos*m_num_channels) & mask;
	m_bufferPos += count;
	short *p = pAudioData;
	u16 *outp = (u16*)m_soundBuffer;
	int val;
	if (m_num_channels > 1) {
		while (count--) {
			val = (*p * volume) >> 0;
			p += 1;//step;
			if (val > 0x7fff)
				val = 0x7fff;
			else if (val < (short)0x8000)
				val = (short)0x8000;
			outp[pos++] = val;// (val >> 8);
			
			val = (*p * volume) >> 0;
			p += 1;//step;
			if (val > 0x7fff)
				val = 0x7fff;
			else if (val < (short)0x8000)
				val = (short)0x8000;
			outp[pos++] = val;// (val >> 8);
			
			pos &= mask;
		}
	}
	else {
		while (count--) {
			val = (*p * volume) >> 0;
			p += 1;//step;
			if (val > 0x7fff)
				val = 0x7fff;
			else if (val < (short)0x8000)
				val = (short)0x8000;
			outp[pos] = val;// (val >> 8) + 128;
			pos = (pos + 1) & mask;
		}
	}
	DSP_FlushDataCache(m_soundBuffer, m_bufferSize*2);
	//printf("upd short: %08x %6d %6d\n", pAudioData, count, m_bufferPos);
}

extern "C" void* ndspMix_init(int channel, int speed, int channels) {
	MixerHardwareDSP *mix = new MixerHardwareDSP(channel, speed, channels);
	mix->init();
	return mix;
}

extern "C" void ndspMix_update32(void *pmix, int *pAudioData, int count) {
	if (pmix == 0) {
		return;
	}
	MixerHardwareDSP *mix = (MixerHardwareDSP*)pmix;
	mix->update(pAudioData, count);
}

extern "C" void ndspMix_update16(void *pmix, short *pAudioData, int count) {
	if (pmix == 0) {
		return;
	}
	MixerHardwareDSP *mix = (MixerHardwareDSP*)pmix;
	mix->update(pAudioData, count);
}

extern "C" int ndspMix_pos(void *pmix) {
	if (pmix == 0) {
		return 0;
	}
	MixerHardwareDSP *mix = (MixerHardwareDSP*)pmix;
	return mix->samplepos();
}


extern "C" void ndspMix_exit(void *pmix) {
	if (pmix == 0) {
		return;
	}
	MixerHardwareDSP *mix = (MixerHardwareDSP*)pmix;
	mix->shutdown();
	delete mix;
}

extern "C" void ndspMix_clear(void *pmix) {
	if (pmix == 0) {
		return;
	}
	MixerHardwareDSP *mix = (MixerHardwareDSP*)pmix;
	mix->clear();
}

extern "C" void ndspMix_flush(void *pmix) {
	if (pmix == 0) {
		return;
	}
	MixerHardwareDSP *mix = (MixerHardwareDSP*)pmix;
	mix->flush();
}

#if 1
MixerHardwareDSP g_mixer(16, 32728, 2);

extern "C" void mixer_update(short *pAudioData, int count) {
	g_mixer.update(pAudioData, count);
}

extern "C" int mixer_pos() {
	return g_mixer.samplepos();
}

extern "C" int  mixer_init() {
	return g_mixer.init();
}

extern "C" void mixer_exit() {
	g_mixer.shutdown();
}

extern "C" void mixer_clear() {
	g_mixer.clear();
}

#endif