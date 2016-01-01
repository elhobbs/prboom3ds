#pragma once
#include "MixerHardware.h"
#include <3ds.h>

typedef unsigned char byte;

class MixerHardwareDSP : public MixerHardware {
public:
	MixerHardwareDSP();
	MixerHardwareDSP(int channel, int speed, int channels);
	~MixerHardwareDSP();

	void init();
	void shutdown();
	void flush();
	void start();
	void stop();
	void update(int *pAudioData, int count);
	void update(short *pAudioData, int count);
	u64 samplepos();
	void clear();
	byte *buffer();
private:

	int m_num_channels;
	int m_speed;
	bool m_initialized;
	bool m_playing;

	u64				m_start;
	u64				m_soundPos;		//the sound position
	u32				m_lastPos;
	u64				m_bufferPos;	//the write position
	int				m_bufferSize;	// the size of soundBuffer
	byte			*m_soundBuffer;	// the buffer itself
	int				m_channel;

	ndspWaveBuf		m_WavBuf;
};

inline MixerHardwareDSP::MixerHardwareDSP() {
	m_speed = 11025;// MIXER_SPEED;
	m_num_channels = 2;
	m_channel = -1;
	m_initialized = false;
	m_playing = false;
}

inline MixerHardwareDSP::MixerHardwareDSP(int channel, int speed, int channels) {
	//m_count++;
	m_speed = speed;
	m_num_channels = channels;
	m_channel = channel;
	m_initialized = false;
	m_playing = false;
}

inline MixerHardwareDSP::~MixerHardwareDSP() {
}