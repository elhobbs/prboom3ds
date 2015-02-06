#pragma once

class MixerHardware {
public:
	MixerHardware();
	virtual ~MixerHardware();
	virtual void flush() = 0;
	virtual void update(int *pAudioData, int count) = 0;
	virtual void update(short *pAudioData, int count) = 0;
	virtual int samplepos() = 0;
};

inline MixerHardware::MixerHardware() {

}

inline MixerHardware::~MixerHardware() {
}
