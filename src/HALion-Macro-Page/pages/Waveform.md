/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Waveform

---

**On this page:**

[[_TOC_]]

---

## Description

The Waveform control allows you to display the sample data of a connected sample file. For simple sample playback, a locator will be shown for the last played note. If you are using the Grain zone instead, the grain locators will be displayed. To display the part of the sample file that is effectively used and not the entire file, you can connect Sample Start/End and Trim Start/End. Furthermore, you can connect the Loop Start/End parameters to display the looped regions with a color overlay. Start Range and Release Start can also be connected to the sample oscillator to display the corresponding markers. In addition, the Waveform control can also display a spectrogram that can be drawn with an adjustable color scheme and opacity. {{#include ../../_Version.md:halion700}}

>&#10069; The waveform display does not take into account which loop (A or B) is used or whether the loop is active or not. It will always display markers and regions, as soon as valid connections are made. If you want a waveform display that also reflects the loop states, you can use the [Sample Display](./Sample-Display.md) template instead, because it contains a UI script that manages these states.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
|**Normalize**|Activate this to normalize the sample level. This can be useful to better visualize samples with low level.
|**Loop Marker**|Activate this option to show loop markers as flags instead of overlay rectangles. {{#include ../../_Version.md:halion700}}|
|**Editable**|Activate this option to make markers editable. The responsive editing area for markers depends on whether the Grain Pos parameter is connected. I Grain Pos is enabled, you can drag only the bottom of the marker (20 pixels). This is to avoid conflicts with the Grain Position marker which uses the rest of the display. Otherwise, markers can be dragged along their entire length. {{#include ../../_Version.md:halion700}}|

## Osc Parameters

|Poperty|Description|
|:-|:-|
|**Filename**|Allows you to connect the Filename parameter of the sample oscillator.|
|**Play Pos**|Allows you to connect the PlayPos parameter of the sample oscillator. This will display a locator for the sample playback. If you are using a Grain or Spectral zone, you must connect this to the PlayData parameter of the grain or spectral oscillator {{#include ../../_Version.md:halion700}} instead. This will display a locator for each playing grain or each spectral multi-voice.|
|**Grain Pos**|Allows you to connect the Position parameter of the grain or spectral oscillator {{#include ../../_Version.md:halion700}}. This will display a locator for each playing grain or each spectral multi-voice. The locators only work if PlayPos is connected, too.|
|**Sample Start**|Allows you to connect the Sample End parameter of the sample oscillator. This is required to display the correct sample region, otherwise the whole sample file is shown.|
|**Sample End**|Allows you to connect the Sample End parameter of the sample oscillator. This is required to display the correct sample region, otherwise the whole sample file is shown.|
|**Trim Start**|Allows you to connect the Trim Start parameter of the sample oscillator. This is required to display the correct sample region if the sample was trimmed in the Sample Editor.|
|**Trim End**|Allows you to connect the Trim End parameter of the sample oscillator. This is required to display the correct sample region if the sample was trimmed in the Sample Editor.|
|**SLoop Start**|Allows you to connect the SustainLoopStart (A or B) parameter of the sample oscillator. This is required if you want to display the sustain loop region.|
|**SLoop End**|Allows you to connect the SustainLoopEnd (A or B) parameter of the sample oscillator. This is required if you want to display the sustain loop region.|
|**RLoop Start**|Allows you to connect the ReleaseLoopStart (A or B) parameter of the sample oscillator. This is required if you want to display the release loop region.|
|**RLoop End**|Allows you to connect the ReleaseLoopEnd (A or B) parameter of the sample oscillator. This is required if you want to display the release loop region.|
|**Start Range**|Allows you to connect the SampleStartRange parameter of the sample oscillator to show the sample start range marker.|
|**Rel Start**|Allows you to connect the ReleaseStart parameter of the sample oscillator to show the release start marker.|
|**Fade In L**|Allows you to connect the FadeInLength parameter of the sample oscillator. This is required if you want to display the influence of a fade in. {{#include ../../_Version.md:halion700}}|
|**Fade In C**|Allows you to connect the FadeInCurve parameter of the sample oscillator. This is required if you want to display the influence of a fade in. {{#include ../../_Version.md:halion700}}|
|**Fade Out L**|Allows you to connect the FadeOutLength parameter of the sample oscillator. This is required if you want to display the influence of a fade out. {{#include ../../_Version.md:halion700}}|
|**Fade Out C**|Allows you to connect the FadeOutCurve parameter of the sample oscillator. This is required if you want to display the influence of a fade out. {{#include ../../_Version.md:halion700}}|
|**Play Mode**|Allows you to connect the PlaybackMode parameter of the sample oscillator. This is required if you want to display the influence of the playback mode. Otherwise, the sample will never be shown reversed. {{#include ../../_Version.md:halion700}}|
|**Level Env**|Allows you to connect the LevelEnvelope parameter of the sample oscillator. This is required if you want to display the influence of a level envelope. {{#include ../../_Version.md:halion700}}|

## Colors

|Poperty|Description|
|:-|:-|
|**Waveform**|The color of the waveform.|
|**PlayPos**|The color of the playback locators.|
|**SusLoop**|The color of the sustain loop region.|
|**RelLoop**|The color of the release loop region.|
|**StartRange**|The color of the start range marker.|
|**RelStart**|The color of the release start marker. {{#include ../../_Version.md:halion700}}|

## Spectral

{{#include ../../_Version.md:halion700}}

|Poperty|Description|
|:-|:-|
|**Scheme**|Selects the color scheme to be used in the display.|
|**FFT Size**|Connect a control using an integer variable or a script parameter to select the FFT size of the window that is used for the analysis of the signal. This allows you to adjust the trade-off between temporal resolution and frequency resolution. Larger FFT sizes analyze more frequencies but with less accuracy in the time domain. See [FFT Sizes](#fft-sizes) for details.|
|**Overlap**|Connect a control using an integer variable or a script parameter to select the number of overlapping FFT windows. Increasing the overlap can reduce artifacts, e.g., loosing details such as transients. See [Overlap Factors](#overlap-factors) for details.|
|**Min Level**|Connect a control using a float variable or a script parameter to set the minimum value of the scale (-240 to +20 dB).|
|**Max Level**|Connect a control using a float variable or a script parameter to set the maximum value of the scale (-220 to +20 dB).|
|**Opacity**|Connect a control using a float variable or a script parameter to blend between sample and FFT display (-100 to +100) .|

>&#10069; For the FFT display settings to be saved and restored with Programs, they must be connected using script parameters.

### FFT Sizes

|Value|FFT Size in Samples|
|:-|:-|
|-1|Selects the FFT size automatically depending on the length of the sample.|
|0|32|
|1|64|
|2|128|
|3|256|
|4|512|
|5|1024|
|6|2048|
|7|4096|
|8|81912|
|9|16384|
|10|32768|
|11|65536|

### Overlap Factors

|Value|Overlap Factor|
|:-|:-|
|0|No overlap.|
|1|2 x|
|2|4 x|
|3|8 x|
|4|16 x |
|5|32 x|
|6|64 x|
|7|128 x|