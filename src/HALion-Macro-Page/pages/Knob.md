/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Knob

## Description

The Knob control allows to create potentiometers by using a bitmap or section resources with frames. These frames are played as an animation when turning the knob. You can specify whether the knob reacts on its entire area or only on those parts where the alpha channel of the bitmap is bigger than 0 (shaped). Furthermore, the control can be inverted and set to be Scalable, which allows resizing of the bitmap. The Slider option can be used to display a pop-up slider when using the knob, which can be helpful when working with rather small knobs.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Name.md}}
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
{{#include ./_Value.md}}
{{#include ./_ShowValue.md}}
{{#include ./_Bitmap.md}}
|**Style**|<ul><li>**Invert:** Inverts the knob animation.</li><li>**Shaped:** If this is activated, the control only reacts on filled pixels, transparent pixels with an alpha channel value of 0 are unresponsive.</li><li>**Scalable:** Acitvate this option if you want to be able to resize the knob. In that case, the assigned bitmap resources are resized according to the scale mode that is defined for the bitmap resource. The margin splitters are defined as for simple bitmaps, but the lower splitter must be set in the lowest subframe. On round knobs, leave margins on 0 and set the scale mode to stretch for the bitmap resource. This way, the knob is resized as a whole.</li><li>**Slider:** Activate this option if you want to use a pop-up slider when adjusting the knob.</li></ul>|