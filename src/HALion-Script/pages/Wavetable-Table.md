/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Wavetable Table

{{#include ../../_Version.md:halion750}}

## Description

Wavetables are managed through a special predefined table called the Wavetable table. The [getWavetable](./getWavetable.md) function returns a table containing a sub-table for each wave, up to a maximum of [wavetable.maxWaves](./Wavetable-Constants.md) = 1024 waves. Waves are referenced by their index and can be added and removed using ``table.insert`` and ``table.remove`` from Lua's table library. While values within the Wavetable table and its wave sub-tables can be modified freely, their structure must remain exactly as defined below.

The fields in the Wavetable table and its wave sub-tables serve different purposes: some control how the wavetable is played back by the synthesis engine, others configure how wave data is extracted from a sample when calling [analyzeWavetable](./analyzeWavetable.md), and others hold metadata or the wave data itself. The Purpose column below shows which category each field belongs to.

Use [createWavetable](./createWavetable.md) to build the table and [analyzeWavetable](./analyzeWavetable.md) to fill its wave data fields. Any changes to the table only take effect in the wavetable engine after calling [setWavetable](./setWavetable.md).

**Available in:** Controller.

## Wavetable Fields

|Field|Description|Value Type|Purpose|
|:-|:-|:-|:-|
|**.loopStart**|Specifies the index of the first wave included in loop playback. The value may be a float, allowing the loop to start between two waves.|number|Playback|
|**.loopEnd**|Specifies the index of the last wave included in loop playback. The value may be a float, allowing the loop to end between two waves.|number|Playback|
|**.name**|The name of the wavetable.|string|Metadata|
|**.normalizeMode**|Controls how extracted waves are level-normalized during playback. Waves extracted from different regions of a sample often vary in level; normalization compensates for these differences. Options: **Off** (1) — preserves the original levels; **Wave** (2) — normalizes each wave individually; **Sequence** (3) — normalizes the entire sequence. The default is **Off** (1). See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#normalize-mode).|enum or number|Playback|
|**.persistentWaves**|When ``true`` (the default), all wavetable data is stored with the preset, which results in redundant data if the same wavetable is used more than once. When ``false``, the wavetable data is not stored with the preset but can be loaded from a reference preset instead, for example.|boolean|Storage|
|**.pitchEnvelope**|When ``true``, the wavetable uses the analyzed pitch from the original sample, playing each wave with the per‑channel fundamental frequency. When ``false`` (the default), all waves play back at the pitch of the triggered note.|boolean|Playback|
|**.phaseMode**|Controls how the phases of extracted waves are treated during playback. Phase relationships between waves can cause cancellation artifacts. Options: **Keep Original Phases** (1) — preserves the original phase of each wave; **Align Phases** (2) — aligns phases across waves; **Reset Phases to Zero** (3) — zeros out all phases. The default is **Align Phases** (2). See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#phase-mode).|enum or number|Playback|
|**.interpolatePhase**|When ``true``, the wavetable envelope crossfades both the levels and phases between waves. This can further reduce phase cancellation artifacts during playback. The default is ``false``.|boolean|Playback|

## Wave Fields

|Field|Description|Value Type|Purpose|
|:-|:-|:-|:-|
|**.channelSelection**|Selects which channel(s) are analyzed when calling [analyzeWavetable](./analyzeWavetable.md). Options: **Multi** (1) — analyzes all available channels; **Sum** (2) — mixes all channels before analysis; or one of the six discrete channels: **Left** (3), **Right** (4), **Center** (5), **LFE** (6), **Left Surround** (7), **Right Surround** (8). The selected channel must exist in the source sample. See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#channel-selection).|enum or number|Analysis|
|**.channelConfig**|The channel configuration of the wavetable, used during playback. HALion's wavetable synthesis supports multi-channel formats up to 5.1, meaning each wave can contain spectra for up to six channels ([wavetable.maxChannels](./Wavetable-Constants.md) = 6). When calling [createWavetable](./createWavetable.md), this is derived automatically from the ``channelSelection`` argument: **Multi** maps the number of channels in the audio file to the matching configuration (e.g., two channels → Stereo, three channels → 3.0, four channels → 4.0); **Sum** or any discrete channel selection results in **Mono**. The configuration can be changed freely after [createWavetable](./createWavetable.md) has been called — reducing it leaves unused channels, expanding it adds empty ones. For example, setting a stereo wave to **Mono** retains only the left channel. Changing this parameter also affects how channels are assigned to the six internal bus channels — **Quadro**, for example, uses channels 1, 2, 5, and 6.  Note that calling [analyzeWavetable](./analyzeWavetable.md) resets the channel configuration if it does not match the number of channels in the source file. For example, a two-channel file set to **Quadro** will be reset to **Stereo**, whereas a four-channel file set to **LCR + Lfe** will remain unchanged since the channel count already matches. See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#channel-configuration).|enum or number|Playback|
|**.filename**|The file name of the sample from which this wave was extracted.|string|Metadata|
|**.freqLimit**|Allows you to limit the playback to the frequency range that the wave actually uses. Any frequencies above this limit are skipped during synthesis, which can lower CPU load. Raise this value to preserve more high-frequency content; lower it to save processing power. The default is 20000 Hz.|number|Playback|
|**.samplePos**|The position in samples within the source file at which this wave was extracted. This position is also used when calling [analyzeWavetable](./analyzeWavetable.md).|number|Analysis|
|**.winCrossfade**|The crossfade duration applied to the edges of the Rectangular window, expressed as a percentage of the analysis window size. Softens the hard boundaries of the Rectangular window to reduce its side lobes. The default is 10.|number|Analysis|
|**.winSizeMode**|Specifies how the window size is determined during spectral analysis. **Auto** (1) derives the window size from the detected fundamental frequency of each channel. **Fixed Individual** (2) uses the per-channel sizes specified in ``.winSize[n]``. **Fixed Common** (3) uses the same ``.winSize[1]`` value for all channels. The default is **Auto** (1). See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#window-size-mode).|enum or number|Analysis|
|**.winType**|The window function applied during spectral analysis. Different window types affect side lobe suppression, which changes how the analyzed spectrum sounds. Options: **Rectangular** (1), **Cosine** (2), **Bartlett** (3), **Hanning** (4), **Hamming** (5), **Blackman** (6), **Blackman-Harris** (7). **Blackman** (6, default) is a good general-purpose choice. **Blackman-Harris** (7) offers the strongest side lobe suppression. **Rectangular** (1) has high side lobes, causing energy from strong partials to bleed into neighboring bins. See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#window-type).|enum or number|Analysis|
|**.curve**|The curvature of the envelope segment from -1 to 1. The default is 0.|number|Playback|
|**.linkEnvelope**|When ``true``, the chronological order of the envelope segment corresponds to the chronological order of the markers in the sample.|boolean|Playback|
|**.spectralEnvRes**|Defines how closely the spectral envelope follows the distribution of the magnitudes across the spectrum. The spectral envelope shapes the formant filter: higher values produce a smoother filter curve with less pronounced formants, while lower values cause the filter curve to track spectral levels more tightly, yielding a more detailed formant response. The default is 500 Hz, which is suitable for most audio content.|number|Playback|
|**.time**|The duration of the envelope segment in seconds. The default is 1.|number|Playback|
|**.spectrum**|An array of six channels — left, right, center, LFE, left surround, and right surround — where each channel entry holds an array with the spectrum of that channel. See [Tables per Channel](#tables-per-channel) for details.|table|Wave Data|
|**.fundamental**|An array of six channels — left, right, center, LFE, left surround, and right surround — where each channel entry holds the fundamental frequency for that channel. See [Tables per Channel](#tables-per-channel) for details.|table|Wave Data|
|**.winSize**|An array of six channels — left, right, center, LFE, left surround, and right surround — where each channel entry holds the window size for that channel. See [Tables per Channel](#tables-per-channel) for details.|table|Wave Data|
|**.wave**|An array of six channels — left, right, center, LFE, left surround, and right surround — where each channel entry holds the waveform data for that channel. See [Tables per Channel](#tables-per-channel) for details.|table|Wave Data|

## Tables per Channel

|Field|Description|Value Type|Purpose|
|:-|:-|:-|:-|
|**.spectrum\[n\]**|An array containing the spectrum for the n-th channel. Each entry of the array represents a bin and references a table with the fields frequency, phase, and magnitude. See [Table per Bin](#table-per-bin) for details. The array size depends on the number of bins, up to a maximum of [wavetable.maxSpectrumSize](./Wavetable-Constants.md) = 4096 bins.|table|Wave Data|
|**.fundamental\[n\]**|The fundamental frequency of the n-th channel in Hz. Defaults to 20 Hz if the pitch analysis did not determine a value during wavetable creation.|number|Wave Data|
|**.winSize\[n\]**|The analysis window size in samples for the n-th channel. Defaults to 512 if the pitch analysis did not determine a value during wavetable creation.|number|Wave Data|
|**.wave\[n\]**|An array containing the waveform of the n-th channel. The array has a fixed size of [wavetable.maxWaveSize](./Wavetable-Constants.md) = 8192, where each index corresponds to one sample of the waveform. Sample amplitudes can be set in the range from -1 to 1, allowing direct modification of the waveform.|table|Wave Data|

## Table per Bin

|Field|Description|Value Type|Purpose|
|:-|:-|:-|:-|
|**.freq**|The frequency of this bin expressed as a multiple of the fundamental frequency.|number|Wave Data|
|**.phase**|The phase of this bin in radians, ranging from -π to π.|number|Wave Data|
|**.magn**|The magnitude of this bin, ranging from 0 to 1.|number|Wave Data|

**See also:** [analyzeWavetable](./analyzeWavetable.md), [analyzeWavetableAsync](./analyzeWavetableAsync.md), [cancelWavetableCreation](./cancelWavetableCreation.md), [createWavetable](./createWavetable.md), [getWavetable](./getWavetable.md), [getWavetableCreationProgress](./getWavetableCreationProgress.md), [setWavetable](./setWavetable.md), [Wavetable Constants](./Wavetable-Constants.md), [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md)
