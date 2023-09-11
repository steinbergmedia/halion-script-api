/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Live Data View

{{#include ../../_Version.md:halion700}}

## Description

The Live Data View control allows you to visualize the output signal of sources with a LiveViewData parameter, such as LFOs, the Step Modulator, envelopes, etc. You can connect these sources directly to the Data Input of the view. Furthermore, you can configure the appearance of the line.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
|**Data Input**|Allows you to connect the LiveViewData parameter of a source module.|
|**Direction**|Defines how the data scrolls through the display:<ul><li>Left: Left to right.</li><li>Right: Right to left.</li><li>Up: Bottom to top.</li><li>Down: Top to bottom.</li></ul>|
|**Time Window**|Defines the overall time that is dislayed in the view in ms.|
|**Start Values**|Allows you to specify a number of pixels that will use a secondary color.|
|**Line Width**|Adjusts the strength of the waveform line from 1 to 3 pixels.|
|**Background**|Defines the background bitmap that is drawn behind the curve. If this is used, the background color setting is ignored.|

## Colors

|Poperty|Description|
|:-|:-|
|**Line**|The primary color of the line.|
|**Line Start**|The secondary color used for the start values.|
|**Backgound**|The background color of the view.|