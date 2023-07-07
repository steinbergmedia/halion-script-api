/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Wavetable Table

## Description

Wavetables are managed through a special predefined table: the Wavetable table. The function [getWavetable](./getWavetable.md) returns a table with tables for each wave and fields that define the playback of the wavetable. The waves are referenced by their index. You can add and remove waves with ``table.insert`` and ``table.remove`` from the table library of Lua, for example. The tables for the wavetable and each wave allow you to change values, but the structure of these tables must remain as defined below.

**Available in:** Controller.

## Wavetable Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.normalizeMode**|If you extract waves from loud and from quiet parts of the sample, the level of these extracted waves differ. Use this to keep the original level, 0 (Off), or normalize the waves during playback, 1 (Wave) or 2 (Sequence), which compensates the level differences. The default is 1 (Off).|number|
|**.phaseMode**|Depending on the phase of the waves, different amounts of phase cancellation occurs during playback. Use this to keep, 0 (Keep Original Phases), or alter the phases of the waves during playback, 1 (Align Phases) or 2 (Reset Phases to Zero).  The default is 1 (Align Phases).|number|
|**.interpolatePhase**|If this is ``true``, the wavetable envelope creates crossfades for both the levels and the phases of the waves. This can minimize the effects of phase cancellation even more. The default is ``false`` .|boolean|
|**.loopStart**|Use this to specify the first wave that is part of the loop playback.|number|
|**.loopEnd**|Use this to specify the last wave that is part of the loop playback.|number|
|**.modelType**|Use this to select Wavetable, Tonal, Noise or Phase Vocoder as playback engine.|number|

## Wave Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.averageMode**|Activates Average Spectrum Until Next Wave.|number|
|**.channelMode**|Use this to select which channel(s) get analyzed.|number|
|**.peakSensitivity**|The spectral peak sensitivity.|number|
|**.samplePos**|The marker position in samples where the wave was extracted from the sample.|number|
|**.cropping**|Crop off-center components using time-reassignment.|number|
|**.filename**|The file name of the sample the wave has been extracted from.|string|
|**.winCrossfade**|The crossfade duration for the rectangular window. The duration is in percent of the analysis window size.|number|
|**.noiseSmoothing**|The order of the spectral envelope for the noise model.|number|
|**.winMode**|Use this to specify if the size of the analysis window is fixed or adopts to the analyzed pitch.|number|
|**.winType**|Use this to select the type of window (Rectangular, Cosine, Bartlett, Hanning, Hamming, Blackman, Blackman-Harris).|number|
|**.curve**|The curvature of the envelope segment from -1 to 1. The default is 0.|number|
|**.linkEnvelope**|If this is activated, the chronological order of the envelope segment corresponds to the chronological order of the markers in the sample.|boolean|
|**.time**|The time of the envelope segement in seconds. The default is 1.|number|
|**.enableNoiseSmoothing**|Enables the spectral envelope for the noise model.|boolean|
|**.spectrum**|This references an array that corresponds to the six channels left, right, center, LFE, left surround and right surround. Each channel references another array for the spectrum of the specified channel. See [Tables per Channel](#tables-per-channel) for further details.|table|
|**.fundamental**|This references an array that corresponds to the six channels left, right, center, LFE, left surround and right surround. Each channel references another array for the fundamental frequency of the specified channel. See [Tables per Channel](#tables-per-channel) for further details.|table|
|**.winSize**|This references an array that corresponds to the six channels left, right, center, LFE, left surround and right surround. Each channel references another array for the window size of the specified channel. See [Tables per Channel](#tables-per-channel) for further details.|table|
|**.wave**|This references an array that corresponds to the six channels left, right, center, LFE, left surround and right surround. Each channel references another array for the waveform of the specified channel. See [Tables per Channel](#tables-per-channel) for further details.|table|

## Tables per Channel

|Field|Description|Value Type|
|:-|:-|:-|
|**.spectrum[n]**|An array for the spectrum of the n-th channel. The size of the array depends on the number of bins in the spectrum. Each index of the array references a table for the frequency, phase and magnitude of the respective bin. See [Table per Bin](#table-per-bin) for details.|table|
|**.fundamental[n]**|The fundamental frequency of the n-th channel. The default is 20 Hz.|number|
|**.winSize[n]**|The window size in samples of the n-th channel. The default is 512.|number|
|**.wave[n]**|An array for the waveform of the n-th channel. The array has a fixed size of 8192 where each index corresponds to a sample of the waveform. You can set the amplitude for each sample in the range from -1 to 1. Use this to modify the waveform directly.|table|

## Table per Bin

|Field|Description|Value Type|
|:-|:-|:-|
|**.freq**|The frequency as a multiple of the fundamental.|number|
|**.phase**|The phase in radians from -π to π.|number|
|**.magn**|The magnitude from 0 to 1.|number|
