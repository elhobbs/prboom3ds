#pragma once
#include "MixerHardware.h"
#include <3ds.h>

typedef unsigned char byte;

class MixerHardware3DS : public MixerHardware {
public:
	MixerHardware3DS();
	MixerHardware3DS(int speed, int channels);
	~MixerHardware3DS();

	void init();
	void shutdown();
	void flush();
	void update(int *pAudioData, int count);
	void update(short *pAudioData, int count);
	int samplepos();
	void clear();
private:

	int m_channels;
	int m_speed;

	u64				m_start;
	u64				m_soundPos;		//the sound position
	u64				m_bufferPos;	//the write position
	int				m_bufferSize;	// the size of soundBuffer
	byte			*m_soundBuffer;	// the buffer itself
};

inline MixerHardware3DS::MixerHardware3DS() {
	m_speed = 32767;// MIXER_SPEED;
	m_channels = 2;
}

inline MixerHardware3DS::MixerHardware3DS(int speed, int channels) {
	//m_count++;
	m_speed = speed;
	m_channels = channels;
}

inline MixerHardware3DS::~MixerHardware3DS() {
}