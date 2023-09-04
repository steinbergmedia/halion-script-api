/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Slider

## Description

The Slider control allows to create a variety of different slider types. You can choose between horizontal and vertical sliders, decide whether the slider should jump to the click position or move relatively to it. Furthermore, it can also be inverted in its behavior. The Slider can be resized with all its bitmaps according to the Scale Modes that are defined for the respective [Bitmap](./Bitmap.md) resources. The Slider can use a Background bitmap which can also be an animated bitmap with frames. This allows you to build animated sliders that only display an animation. The Slider can use Pre-Handle and Post-Handle bitmaps, which are drawn from the left edge to the handle position and from the handle position to the right edge (Bottom &rarr; Handle &rarr; Top, for vertical sliders). When moving the slider, both bitmaps are clipped at the handle position. Alternatively, you can also stretch both bitmaps towards the handle position. The Slider can display a Handle bitmap, which is drawn on top oft the Background, Pre-Handle and Post-Handle bitmaps.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:value}}
{{#include ./_Properties.md:show-value}}
|**Style**|<ul><li>**Vertical:** Creates a vertical slider. The default setting is horizontal.</li><li>**Jump:** The slider jumps to the click position. By default, it moves relatively to the click position.</li><li>**Invert:** Inverts the slider movement.</li><li>**Split:** Use the Pre-Handle and Post-Handle bitmaps for drawing. The background bitmap is disabled in this mode. By default, the slider is created with Split off. In this case, the Background and Handle bitmaps are used.</li><li>**Stretch:** Pre-Handle and Post-Handle bitmaps are stretched to fill the area between edge and handle. By default, the bitmaps are clipped at the handle position.</li>**Scalable:** The slider can be resized, and all [Bitmap](./Bitmap.md) resources are scaled with their defined Scaled Mode.</li><li>**Read-Only:** Activate this option if you want to use the slider as a display-only parameter which cannot be edited.</li></ul>|
|**Bitmaps**|<ul><li>**Background:** Specifies the  bitmap to be used as background. It will be animated if the [Bitmap](./Bitmap.md) resource provides multiple frames. Alternatively, you can use a [SVG](./SVG.md) resource which can also be animated.</li><li>**Pre-Handle:** Specifies the bitmap to be used for the area from the start to the handle position.</li><li>**Post-Handle:** Specifies the bitmap to be used for the area from the handle position to the end.</li><li>**Handle:** Specifies the bitmap to be used as slider handle. Alternatively, you can use a [SVG](./SVG.md) resource which can also be animated.</li></ul>|
