#pragma once
#include <3ds/types.h>
class MixerHardware {
public:
	MixerHardware();
	virtual ~MixerHardware();
	virtual void flush() = 0;
	virtual void update(int *pAudioData, int count) = 0;
	virtual void update(short *pAudioData, int count) = 0;
	virtual u64 samplepos() = 0;
};

inline MixerHardware::MixerHardware() {

}

inline MixerHardware::~MixerHardware() {
}
