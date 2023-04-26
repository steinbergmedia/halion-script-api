/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Resources](./Resources.md) /

# Section

## Description

A section is a portion of a bitmap defined by a rectangle that has a x/y-position and width and height.

A section can be used instead of an image resource and has the advantage to use less OS graphic resources. Therefore, it is useful to add only a few image resources combining graphical elements, which are then used as references in the various sections.

Sections can also be used for animations, by setting the Frames property to the number of subframes that can be found within the section. Furthermore, sections can be scaled by the controls in which they are assigned. Select the Scale Mode and Margins to define the scaling behavior.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the section.|
|**Pos X**|The x-coordinate of the first pixel (upper left corner).|
|**Pos Y**|The y-coordinate of the first pixel (upper left corner).|
|**Width**|The horizontal size in pixels.|
|**Height**|The vertical size in pixels.|
|**Frames**|Defines the number of subframes in a bitmap. Bitmaps with frames can be used as animations in controls like knobs, sliders, and animations.|
|**Scale Mode**|This defines how a bitmap is adapted in size when the control that is using it is set to be scalable and sized smaller or larger than the original bitmap.<ul><li>**Stretch:** By default, scale mode is set to stretch, which means that the bitmap is drawn smaller or larger.</li><li>**Tile:** This means that the original bitmap will be drawn repeatedly as soon as the control size exceeds the size of the original bitmap.</li><li>**Tile Border:** This method repeatedly draws the area that is defined by the margin settings, and leaves the inner area empty.</li></ul>|
|**Margin**|**Left, Top, Right, Bottom.**<p>As soon as a margin is set, the margin area is not stretched or tiled, but only the area outside. This can be used to define frames, where the four corners of the bitmap are preserved in size and only the rest of the bitmap is stretched, for example.</p>|