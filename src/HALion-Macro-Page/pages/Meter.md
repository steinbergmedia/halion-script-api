/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Meter

## Description

The Meter control allows you to display incoming values as a meter bar. It displays a background image and a [Bitmap](Bitmap.md) for the lit state of the meter to be drawn. The [Bitmap](Bitmap.md) for the lit state is drawn clipped on top of the background image. The size of the clipped region depends on the current value. The Meter control can either be drawn horizontally or vertically. The Meter control can be directly connected to parameter outputs of script modules, for example.

>&#10069; For optimal drawing, the Meter control must be placed on the topmost level on the macro page, no other objects must be layered on top.

To display the meter and peak outputs of HALion's busses, a special vu meter template is required that contains two meters and a special logic that allows for the template to be directly connected to any bus. Please use one of these preconfigured meter templates that are part of the [Basic Controls](./Exploring-Templates.md#basic-controls) library and set the bus parameter to the desired bus, e.g., ``@bus:0`` for the first bus in the program. The graphical resources and sizes can be customized by modifying these templates.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:value}}
|**Peak Value**|Allows you to connect a parameter that delivers a peak hold value.|
|**Style**|<ul><li>**Vertical:** Activate this option if you want to display a vertical meter instead of the standard horizontal meter.</li><li>**Scalable:** {{#include ./_Properties.md:scalable}}</li></ul>|
|**Bitmaps**|<ul><li>**Meter:** Allows you to assign the [Bitmap](Bitmap.md) that is used for the lit meter.</li><li>**Background:** Allows you to assign the [Bitmap](Bitmap.md) that is used as background for the meter (e.g., a dimmed version of the lit meter bitmap).</li></ul>|
