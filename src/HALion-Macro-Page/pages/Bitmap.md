/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Resources](./Resources.md) /

# Bitmap

## Description

The Bitmap resource requires either a 24-bit png file with alpha channel or a bmp file without alpha channel. Many elements refer to bitmap resources, which can be assigned once a resource has been created. Keep in mind that each individual image is managed by the OS and costs performance. Therefore, it is recommended to work with a lower number of images, create sections within these images and use the sections wherever an image resource is required. In this case, HALion's GUI framework handles the section resources and the OS only has to deal with a few images.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Bitmap resource.|
|**Path**|Specifies the path and file name of the used bitmap.|
|**Alpha**|Defines the opacity of the bitmap from 0 (transparent)  to 255 (opaque).|
|**Frames**|Defines the number of subframes in a bitmap. Bitmaps with frames can be used as animations in controls like knobs, sliders, and animations.|
{{#include ./_ScaleMode.md}}
{{#include ./_Margin.md}}
