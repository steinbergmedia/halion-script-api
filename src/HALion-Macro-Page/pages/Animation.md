/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Animation

## Description

Used to display animations or graphical option menus.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:value}}
{{#include ./_Properties.md:show-value}}
|**Style**|<ul><li>**Invert:** Inverts the animation.</li><li>**Scalable:** {{#include ./_Properties.md:scalable}}</li></ul>|
|**Bitmap**|Bitmap refers to a [Bitmap](./Bitmap.md) resource which can be:<ul><li>An individual bitmap file in png or bmp format defined as resource.</li><li>A section, specifying a region within a larger source bitmap.</li><li>A SVG file defined as resource.</li></ul>You can either select an existing resource or drop an image file onto the text field. In this case, the corresponding resource is created and set as reference.|
|**SVG Parameters**|If you use SVGs with animatable properties, they appear in the SVG Parameters section. You can connect SVG Parameters just like value parameters with engine, MIDI, or UI script parameters. In this way, the connected parameters can animate different properties of SVG child objects, such as color, position, rotation and so on.|
