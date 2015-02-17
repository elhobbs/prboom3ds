#include "Mixer_3ds.h"
#include <3ds.h>
#include <stdio.h>
#include <string.h>

void MixerHardware3DS::init() {
	Result ret = 0;
	m_bufferSize = 4096;

	m_soundBuffer = (byte *)linearAlloc(m_bufferSize);
	m_soundBufferPHY = osConvertVirtToPhys((u32)m_soundBuffer);
	m_bufferPos = 0;
	m_soundPos = 0;
	m_lastPos = 0;
	clear();

	ret = csndPlaySound(0x10, SOUND_REPEAT | SOUND_FORMAT_8BIT, m_speed, (u32*)m_soundBuffer, (u32*)m_soundBuffer, m_bufferSize);
	if (ret != 0) {
		printf("mus init failed\n");
	}
	m_start = svcGetSystemTick();
}

void MixerHardware3DS::clear() {
	memset(m_soundBuffer, 0, m_bufferSize);
	GSPGPU_FlushDataCache(NULL, m_soundBuffer, m_bufferSize);
}

void MixerHardware3DS::shutdown() {
	flush();
	CSND_SetPlayState(0x10, 0);
}

void MixerHardware3DS::flush() {
}

byte* MixerHardware3DS::buffer() {
	return m_soundBuffer;
}

#define TICKS_PER_SEC 268123480.0

int MixerHardware3DS::samplepos() {
#if 1
	int pos,diff;
	CSND_ChnInfo musInfo;
	csndGetState(0x10, &musInfo);
	pos = musInfo.samplePAddr - m_soundBufferPHY;
	diff = pos - m_lastPos;
	//check for wrap
	if(diff < 0) diff += m_bufferSize;
	m_lastPos = pos;
	m_soundPos += diff;
	return m_soundPos;
#else
	u64 delta = svcGetSystemTick() - m_start;
	// Work around the VFP not supporting 64-bit integer <--> floating point conversion
	double temp = (u32)(delta >> 32);
	temp *= 0x100000000ULL;
	temp += (u32)delta;

	delta = (temp * m_speed) / TICKS_PER_SEC;
	m_soundPos = delta;
	return m_soundPos;
#endif
}

void MixerHardware3DS::update(int *pAudioData, int count) {
}

void MixerHardware3DS::update(short *pAudioData, int count)
{
	int volume = 1;
	int mask = m_bufferSize - 1;

	if (m_bufferPos < m_soundPos) {
		m_bufferPos = m_soundPos;
	}

	short *p = pAudioData;
	byte *outp = m_soundBuffer;
	int val;
	int pos = m_bufferPos & mask;
	m_bufferPos += count;
	while (count--) {
		val = (*p * volume) >> 0;
		p += 1;//step;
		if (val > 0x7fff)
			val = 0x7fff;
		else if (val < (short)0x8000)
			val = (short)0x8000;
		outp[pos] = val>>8;
		pos = (pos + 1) & mask;
	}
	GSPGPU_FlushDataCache(NULL, m_soundBuffer, m_bufferSize);
}


MixerHardware3DS g_mixer(32728, 2);

extern "C" void mixer_update(short *pAudioData, int count) {
	g_mixer.update(pAudioData, count);
}

extern "C" int mixer_pos() {
	return g_mixer.samplepos();
}

extern "C" void mixer_init() {
	g_mixer.init();
}

extern "C" void mixer_exit() {
	g_mixer.shutdown();
}

extern "C" void mixer_clear() {
	g_mixer.clear();
}

extern "C" byte* mixer_buffer() {
	return g_mixer.buffer();
}

