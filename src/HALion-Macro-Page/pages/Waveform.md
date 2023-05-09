/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Waveform

## Description

The Waveform control allows you to display the sample data of a connected sample file. For simple sample playback, a locator will be shown for the last played note. If you are using the Grain zone instead, the grain locators will be displayed. To display the part of the sample file that is effectively used and not the entire file, you can connect Sample Start/End and Trim Start/End. Furthermore, you can connect the Loop Start/End parameters to display the looped regions with a color overlay. Start Range and Release Start can also be connected to the sample oscillator to display the corresponding markers.

>&#10069; The waveform display does not take into account which loop (A or B) is used or whether the loop is active or not. It will always display markers and regions, as soon as valid connections are made. If you want a waveform display that also reflects the loop states, you can use the [Sample Display](./Sample-Display.md) template instead, because it contains a UI script that manages these states.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
|**Normalize**|Activate this to normalize the sample level. This can be useful to better visualize samples with low level.
|**Filename**|Allows you to connect the Filename parameter of the sample oscillator.|
|**Play Pos**|Allows you to connect the PlayPos parameter of the sample oscillator. This will display a locator for the sample playback. If you are using a Grain zone, you must connect this to the PlayData parameter of the grain oscillator instead.|
|**Grain Pos**|Allows you to connect the Position parameter of the grain oscillator. This will display a locator for each playing grain. The locators only work if PlayPos is connected, too.|
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

## Colors

|Poperty|Description|
|:-|:-|
|**Waveform**|The color of the waveform.|
|**PlayPos**|The color of the playback locators.|
|**SusLoop**|The color of the sustain loop region.|
|**RelLoop**|The color of the release loop region.|
|**StartRange**|The color of the start range marker.|
