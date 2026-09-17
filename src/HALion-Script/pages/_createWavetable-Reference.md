/*ANCHOR: all */

// ANCHOR: function
>**createWavetable{arguments}**

{{#include ../../_Version.md:halion750}}
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to create a [Wavetable table](./Wavetable-Table.md) from an audio file. You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. The ``createWavetable`` function can be configured with named arguments. The named arguments are optional and if called without, ``createWavetable`` will be executed with its default settings. The [.linkEnvelope](./Wavetable-Table.md#wave-fields) field is initialized to ``true`` for all generated waves.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**callback**|An optional callback function called with the [AudioFile](./Audio-File.md) object and the resulting wavetable table as arguments once analysis is complete. If omitted, ``createWavetable`` runs synchronously in the current thread and returns the wavetable directly. In this case, the pitch analysis required for the wavetable analysis is not performed — you must call [analyzePitch](./analyzePitch.md) for the audio file in advance. If provided, ``createWavetable`` runs asynchronously in a parallel thread and performs the required pitch analysis itself; use [getWavetableCreationProgress](./getWavetableCreationProgress.md) to monitor progress and [cancelWavetableCreation](./cancelWavetableCreation.md) to abort.|function, optional|
|**start**|The start position in samples within the audio file from which wave extraction begins. Together with ``length``, this defines the region of the sample used for placing wave extraction markers. The default is 0 (the beginning of the audio file).|number, optional|
|**length**|The length in samples of the region used for wave extraction, measured from ``start``. Set to 0 or a negative value to extend the region to the end of the audio file. The default is 0 (use all samples from ``start`` to the end).|number, optional|
|**analyzeWavetable**|When ``true`` (the default), waves are automatically analyzed and their spectral data populated after extraction. When ``false``, wave markers are created but analysis is skipped — useful if you intend to call [analyzeWavetable](./analyzeWavetable.md) manually later or want to inspect the structure before committing to analysis.|bool, optional|
|**creationMode**|Determines how wave extraction markers are distributed within the specified range in the audio file. Options: **Equal Distance** (1) — markers spaced evenly; **Exponential** (2) — markers spaced with exponential distribution, denser at the start; **Spectral** (3) — markers placed at points of significant spectral change; **Spectral Voiced** (4) — like Spectral but focuses on voiced (pitched) content; **Overlap-Add** (5) — uses overlapping analysis windows, controlled by ``overlap``. The default is Equal Distance (1). See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#creation-mode).|enum or number, optional|
|**numWaves**|The number of wave extraction markers to place within the specified range in the audio file. Only for **Equal Distance** and **Exponential** creation modes. The default is 1.|number, optional|
|**threshold**|The minimum signal level (in dB) required for a wave extraction marker to be placed. Only used by the **Spectral** and **Spectral Voiced** creation modes. Regions with levels below this threshold are ignored. Raise this value to focus on louder, more prominent content; lower it to capture quieter regions. The default is -40 dB.|number, optional|
|**sensitivity**|Controls how sensitive the analysis is to spectral changes when placing wave extraction markers. Only used by the **Spectral** and **Spectral Voiced** creation modes. Higher values cause markers to be placed at more subtle spectral transitions, resulting in more waves; lower values require more pronounced changes before a marker is added. The value is in percent and the default is 25.|number, optional|
|**overlap**|Sets the overlap between analysis windows when using the **Overlap-Add** creation mode, has no effect in other creation modes. Higher overlap values capture more detail and produce more wave markers; lower values capture less detail and yield fewer markers. Options: **None** (1), **2x** (2), **4x** (3), **8x** (4), **16x** (5). The default is **4x** (3). See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#creation-overlap).|enum or number, optional|
|**includeWindow**|Controls whether analysis windows are constrained to fit fully within the sample boundaries. When ``false`` (the default), the center of the analysis window is placed exactly at the start and end of the range, meaning half the window may extend outside the sample. When ``true``, markers are positioned so the entire analysis window stays within the sample — use this when importing wavetable samples where each equal-length segment represents a distinct waveform.|bool, optional|
|**channelSelection**|Selects which channel(s) of the audio file are used for wave creation. **Multi** (1) analyzes all available channels; **Sum** (2) mixes all channels together before analysis; the remaining options select a single discrete channel. The default is **Multi** (1). The selected channel must exist in the source file. See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#channel-selection).|enum or number, optional|
|**winType**|The window function applied during spectral analysis. Different window types affect side lobe suppression, which changes how the analyzed spectrum sounds. Options: **Rectangular** (1), **Cosine** (2), **Bartlett** (3), **Hanning** (4), **Hamming** (5), **Blackman** (6), **Blackman-Harris** (7). **Blackman** (6, default) is a good general-purpose choice. **Rectangular** (1) has high side lobes, causing energy from strong partials to bleed into neighboring bins. **Blackman-Harris** (7) offers the strongest side lobe suppression. Experiment to find what works best for your material. See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#window-type).|enum or number, optional|
|**winSizeMode**|Specifies how the window size is determined during spectral analysis. **Auto** (1, the default) derives the window size from the detected fundamental frequency of each channel. **Fixed Individual** (2) uses the per-channel sizes specified in ``winSize[n]``. **Fixed Common** (3) uses the same ``winSize[1]`` value for all channels. See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#window-size-mode).|enum or number, optional|
|**winSize\[n\]**|The analysis window size in samples for the n-th channel (e.g., ``winSize[1]`` for the left channel, ``winSize[2]`` for the right, up to six channels). Only used when ``winSizeMode`` is set to **Fixed Individual** or **Fixed Common**. The maximum is 8192 samples; the default is 512.|number, optional|
|**winCrossfade**|The crossfade duration applied to the edges of the Rectangular window, expressed as a percentage of the analysis window size. Softens the hard boundaries of the Rectangular window to reduce its side lobes. The default is 10.|number, optional|
|**spectralEnvRes**|Defines how closely the spectral envelope follows the distribution of the magnitudes across the spectrum. The spectral envelope shapes the formant filter: higher values produce a smoother filter curve with less pronounced formants, while lower values cause the filter curve to track spectral levels more tightly, yielding a more detailed formant response. The default is 500 Hz, which is suitable for most audio content.|number, optional|
|**freqLimit**|Allows you to limit the playback to the frequency range that the wave actually uses. Any frequencies above this limit are skipped during synthesis, which can lower CPU load. Raise this value to preserve more high-frequency content; lower it to save processing power. The default is 20000 Hz.|number, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns a [Wavetable table](./Wavetable-Table.md).
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
{{#include ./_createWavetable-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */