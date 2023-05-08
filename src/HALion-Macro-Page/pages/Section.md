/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Resources](./Resources.md) /

# Section

## Description

A section is a portion of a bitmap defined by a rectangle that has a x/y-position, a width and a height.

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
{{#include ./_ScaleMode.md}}
{{#include ./_Margin.md}}