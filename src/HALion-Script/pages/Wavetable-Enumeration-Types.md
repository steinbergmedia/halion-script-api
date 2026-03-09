/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Wavetable Enumeration Types

{{#include ../../_Version.md:halion750}}

## Description

Enumerator types to identify wavetable settings with regard to their creation and playback.

**Available in:** Controller.

## Channel Configuration

The channel configuration of the wavetable, used during playback. See [Wavetable Table](./Wavetable-Table.md).

<!-- ANCHOR: wavetable-channel-configuration -->
|Index|Enumerator|Display Name|
|:-|:-|:-|
|1|wavetable.ChannelConfig.modeMono|Mono|
|2|wavetable.ChannelConfig.modeStereo|Stereo|
|3|wavetable.ChannelConfig.mode30Cine|LCR|
|4|wavetable.ChannelConfig.mode31Cine|LCR + Lfe|
|5|wavetable.ChannelConfig.mode40Music|Quadro|
|6|wavetable.ChannelConfig.mode41Music|Quadro + Lfe|
|7|wavetable.ChannelConfig.mode50|5.0|
|8|wavetable.ChannelConfig.mode51|5.1|
<!-- ANCHOR_END: wavetable-channel-configuration -->

## Channel Selection

Selects which channel(s) are analyzed when calling [analyzeWavetable](./analyzeWavetable.md).

<!-- ANCHOR: wavetable-channel-selection -->
|Index|Enumerator|Display Name|
|:-|:-|:-|
|1|wavetable.ChannelSelection.multi|Multi|
|2|wavetable.ChannelSelection.sum|Channel Sum|
|3|wavetable.ChannelSelection.left|Left Channel|
|4|wavetable.ChannelSelection.right|Right Channel|
|5|wavetable.ChannelSelection.center|Center Channel|
|6|wavetable.ChannelSelection.lfe|LFE Channel|
|7|wavetable.ChannelSelection.rearLeft|Rear Left Channel|
|8|wavetable.ChannelSelection.rearRight|Rear Right Channel|
<!-- ANCHOR_END: wavetable-channel-selection -->

## Creation Mode

Determines how wave extraction markers are distributed within the specified range in the audio file. See [createWavetable](./createWavetable.md).

<!-- ANCHOR: wavetable-creation-mode -->
|Index|Enumerator|Display Name|
|:-|:-|:-|
|1|wavetable.CreationMode.equalDist|Equal Dist|
|2|wavetable.CreationMode.exponential|Exponential|
|3|wavetable.CreationMode.spectral|Spectral|
|4|wavetable.CreationMode.spectralVoiced|Spectral Voiced|
|5|wavetable.CreationMode.overlapAdd|Overlap-Add|
<!-- ANCHOR_END: wavetable-creation-mode -->

## Creation Overlap

Sets the overlap between analysis windows when using the **Overlap-Add** creation mode.  See [createWavetable](./createWavetable.md).

<!-- ANCHOR: wavetable-creation-overlap -->
|Index|Enumerator|Display Name|
|:-|:-|:-|
|1|wavetable.CreationOverlap.modeNone|None|
|2|wavetable.CreationOverlap.mode2x|2x|
|3|wavetable.CreationOverlap.mode4x|4x|
|4|wavetable.CreationOverlap.mode8x|8x|
|5|wavetable.CreationOverlap.mode16x|16x|
<!-- ANCHOR_END: wavetable-creation-overlap -->

## Normalize Mode

Controls how extracted waves are level-normalized during playback. See [Wavetable Table](./Wavetable-Table.md).

<!-- ANCHOR: wavetable-normalize-mode -->
|Index|Enumerator|Display Name|
|:-|:-|:-|
|1|wavetable.NormalizeMode.off|Off|
|2|wavetable.NormalizeMode.wave|Wave|
|3|wavetable.NormalizeMode.sequence|Sequence|
<!-- ANCHOR_END: wavetable-normalize-mode -->

## Phase Mode

Controls how the phases of extracted waves are treated during playback. See [Wavetable Table](./Wavetable-Table.md).

<!-- ANCHOR: wavetable-phase-mode -->
|Index|Enumerator|Display Name|
|:-|:-|:-|
|1|wavetable.PhaseMode.original|Keep Original Phases|
|2|wavetable.PhaseMode.align|Align Phases|
|3|wavetable.PhaseMode.zero|Reset Phases to Zero|
<!-- ANCHOR_END: wavetable-phase-mode -->

## Window Type

The window function applied during spectral analysis. See [createWavetable](./createWavetable.md).

<!-- ANCHOR: wavetable-window-type -->
|Index|Enumerator|Display Name|
|:-|:-|:-|
|1|wavetable.WinType.rectangular|Rectangular|
|2|wavetable.WinType.cosine|Cosine|
|3|wavetable.WinType.bartlett|Bartlett|
|4|wavetable.WinType.hanning|Hanning|
|5|wavetable.WinType.hamming|Hamming|
|6|wavetable.WinType.blackman|Blackman|
|7|wavetable.WinType.blackmanHarris|Blackman-Harris|
<!-- ANCHOR_END: wavetable-window-type -->

## Window Size Mode

Specifies how the window size is determined during spectral analysis. See [createWavetable](./createWavetable.md).

<!-- ANCHOR: wavetable-window-size-mode -->
|Index|Enumerator|Display Name|
|:-|:-|:-|
|1|wavetable.WinSizeMode.auto|Auto|
|2|wavetable.WinSizeMode.fixedIndividual|Fixed Individual|
|3|wavetable.WinSizeMode.fixedCommon|Fixed Common|
<!-- ANCHOR_END: wavetable-window-size-mode -->

**See also:** [analyzeWavetable](./analyzeWavetable.md), [analyzeWavetableAsync](./analyzeWavetableAsync.md), [cancelWavetableCreation](./cancelWavetableCreation.md), [createWavetable](./createWavetable.md), [getWavetable](./getWavetable.md), [getWavetableCreationProgress](./getWavetableCreationProgress.md), [setWavetable](./setWavetable.md), [Wavetable Constants](./Wavetable-Constants.md), [Wavetable Table](./Wavetable-Table.md)
