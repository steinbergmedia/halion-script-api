/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Image

## Description

This control allows you to add pure graphical elements without further functionality. The control can be changed in size and adapt the referenced bitmap bitmap resource if it is set to scalable.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Image.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Bitmap**|Bitmap refers to a [Bitmap](./Bitmap.md) resource which can be:<ul><li>An individual bitmap file in png or bmp format defined as resource.</li><li>A section, specifying a region within a larger source bitmap.</li></ul>You can either select an existing resource or drop an image file onto the text field. In this case, the corresponding resource is created and set as reference.
|**Scalable**|Activate this option if you want to be able to resize the image. The assigned [Bitmap](./Bitmap.md) resources are resized according to the Scale Mode that is defined for the [Bitmap](./Bitmap.md) resource.|