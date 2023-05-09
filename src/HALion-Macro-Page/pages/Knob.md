/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Knob

## Description

The Knob control allows to create potentiometers by using a bitmap or section resources with frames. These frames are played as an animation when turning the knob. You can specify whether the knob reacts on its entire area or only on those parts where the alpha channel of the bitmap is bigger than 0 (shaped). Furthermore, the control can be inverted and set to be Scalable, which allows resizing of the bitmap. The Slider option can be used to display a pop-up slider when using the knob, which can be helpful when working with rather small knobs.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:value}}
{{#include ./_Properties.md:show-value}}
{{#include ./_Properties.md:bitmap}}
|**Style**|<ul><li>**Invert:** Inverts the knob animation.</li><li>**Shaped:** If this is activated, the control only reacts on filled pixels, transparent pixels with an alpha channel value of 0 are unresponsive.</li><li>**Scalable:** {{#include ./_Properties.md:scalable}} The margin splitters are defined as for simple bitmaps, but the lower splitter must be set in the lowest subframe. On round knobs, leave margins on 0 and set the Scale Mode to stretch for the [Bitmap](./Bitmap.md) resource. This way, the knob is resized as a whole.</li><li>**Slider:** Activate this option if you want to use a pop-up slider when adjusting the knob.</li></ul>|
