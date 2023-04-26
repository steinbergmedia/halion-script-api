/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Decor (Control)

## Description

This control allows you to add rectangular shapes as graphical elements to create background frames, group frames, etc. A decor can be drawn as an outline, a filled, or a combined rectangle. The fill style can either be a solid color, a linear gradient, or a radial gradient. Furthermore, the rectangle can have rounded corners with an adjustable radius.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the decor.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Fill Style**|Decors can be filled. You can choose from the following fill styles:<ul><li>**No Fill:** The inside of the rectangle remains fully transparent.  This mode is useful for decors that show only an outline.</li><li>**Solid:** The inside of the rectangle will be filled with a color.</li><li>**Linear Gradient:** The inside of the rectangle will be filled with a linear gradient. The gradient has a top and a bottom color which refers to the default angle of 0 degree.</li><li>**Radial Gradient:** The inside of the rectangle will be filled with a radial gradient.</li></ul>
|**Radius**|Specifies the roundness of the rectangle corners.|
|**Line Width**|Specifies the width of the outline.|
|**Angle**|Specifies the angle of a **Linear Gradient** fill style.|
|**Stretch**|Allows you to compress (values < 1.0) or expand (values > 1.0) a **Linear** or **Radial Gradient**.
|**Center X, Y**|Specifies the center of a **Radial Gradient**. Negative values move the center to the left and top, postive values to the right and bottom.|
|**Line Color**|Defines the color of the outline.|
|**Color**|Specifies the fill color in **Solid** fill style.|
|**Start Color**|Specifies the top fill color in **Linear Gradient** fill style.|
|**End Color**|Specifies the bottom fill color in **Linear Gradient** fill style.|
|**Inner Color**|Specifies the inner fill color in **Radial Gradient** fill style.|
|**Outer Color**|Specifies the outer fill color in **Radial Gradient** fill style.|