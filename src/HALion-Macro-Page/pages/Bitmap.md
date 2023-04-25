# Bitmap

### Description

The Bitmap resource requires either a 24 bit png file with alpha channel or a bmp file without alpha channel. Many elements refer to bitmap resources, which can be assigned once a resource has been created. Keep in mind that each individual image is managed by the OS and costs performance. Therefore, it is recommended to work with a lower number of images, create sections within these images and use the sections wherever an image resource is required. In this case, HALion's GUI framework handles the section resources and the OS only has to deal with a few images.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Bitmap resource.|
|**Path**|Specifies the path and file name of the used bitmap.|
|**Alpha**|Defines the opacity of the bitmap from 0 (transparent)  to 255 (opaque).|
|**Frames**|Defines the number of subframes in a bitmap. Bitmaps with frames can be used as animations in controls like knobs, sliders, and animations.|
|**Scale Mode**	|This mode defines how a bitmap is adapted in size when the control that is using it is set to be scalable and sized smaller or larger than the original bitmap.<ul><li>**Stretch**: By default, scale mode is set to stretch, which means that the bitmap is drawn smaller or larger.</li><li>**Tile**: This means that the original bitmap will be drawn repeatedly as soon as the control size exceeds the size of the original bitmap.</li><li>**Tile Border**: This method only draws the area defined by the margin settings repeatedly and leaves the inner area empty.</li></ul>|
|**Margin**|**Left, Top, Right, Bottom.**<p>As soon as a margin is set, the margin area is not stretched or tiled, but only the area outside. This can be used to define frames, for example, where the four corners of the bitmap are preserved in size and only the rest of the bitmap is stretched.</p>|
