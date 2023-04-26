/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Curve Editor

---

**On this page:**

[[_TOC_]]

---


## Description

The Curve Editor template allows you to display and edit curves, such as the custom curve of the velocity curve module or the modulation matrix. The template contains a combination of controls to modify the values of the selected node. These controls are connected using UI parameters, which should be part of the template and must the use UI variables defined in the template.

>&#10069; The curve editor control cannot be created manually in the GUI Tree. It only comes as part of the Curve Editor template.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the template.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}

## Template Components

### UI Variables

These variables are needed to allow the communication between the curve editor and other controls in the template.

|Variable|Description|Type|Range|
|:-|:-|:-|:-:|
|**curve**|Curvature of the selected node.|float|-10 - 10|
|**valY**|Y value of the selected node.|float|0 - 1|
|**valX**|X value of the selected node.|float|0 - 1|
|**index**|Index of the selected node.|integer|0 - 100|
|**Min**|Mimimum level of the curve.|float|0 - 1|
|**Max**|Specifies the note grid.|float|0 - 1|

### Controls and Sub Templates

|Item|Description|
|:-|:-|
|**curve editor**|The curve editor control with exported FuncData (CurveData), Minimum (Min), and Maximum (Max) to be connected on a template instance level. For example, to the Maximum parameter of a Velocity curve module.|
|**Slider Max**|A slider with an exported value (Max) to be connected on a template instance level. For example, to the Maximum parameter of a Velocity curve module.|
|**Slider Min**|A slider with an exported value (Min) to be connected on a template instance level. For example, to the Maximum parameter of a Velocity curve module.|
|**Edit**|A group of controls that is connected to the curve editor control via the variables defined above.<ul><li>**ValX:** A valuebox template to control the X value of the selected node (Value = @valX).</li><li>**ValY:** A valuebox template to control the Y value of the selected node (Value = @valY).</li><li>**Curve:** A valuebox template to control the curvature value of the selected node (Value = @curve).</li><li>**Index:** A valuebox template to set the selected node (Value = @index).</li></ul>|

### Curve Editor View

#### Properties

|Property|Description|
|:-|:-|
|**Name**|The name of the Curve Editor control.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Style**|<ul><li>**Bipolar:** Activate this style for bipolar curves like pitch or pan.</li><li>**Add/Rem:** Allows you to add and remove nodes, otherwise a fixed number of nodes is used.</li><li>**Sel Node:** Allows you to select single/multiple nodes.</li><li>**Cross:** Shows cross lines when editing a node.</li><li>**Grid:** Shows the grid.</li><li>**Nodes:** Shows nodes.</li><li>**Scale X:** Shows the scale for the X-axis.</li><li>**Scale Y:** Shows the scale for the Y-axis.</li></ul>|
|**FuncData**|Connect this to the FuncData parameter of the Velocity Curve module, for example.|
|**Grid**|<ul><li>**MinX:** Defines the minimum value of the horizontal grid.</li><li>**MaxX:** Defines the maximum value of the horizontal grid.</li><li>**MinY:** Defines the minimum value of the vertical grid.</li><li>**MaxY:** Defines the maximum value of the vertical grid.</li></ul>|
|**Selected Node**|<ul><li>**Index:** The number of the selected node.</li><li>**X:** X value of the selected node (connected via "@valX").</li><li>**Y:** Y value of the selected node (connected via "@valY").</li><li>**Curve:** The curve (connected via "@curve").</li></ul>|
|**Minimum**|Compresses the curve in Y-dimension from the low end.|
|**Maximum**|Compresses the curve in Y-dimension from the upper end.|
|**Play Pos**|Allows you to connect a parameter that sends the current value on the curve (for example input to output velocity).|

#### Colors

>&#10069; Some Colors are only available if the corresponding style options are active.

|Property|Description|
|:-|:-|
|**Fill**|Fill color of the nodes.|
|**FillSelected**|Fill color of the selected nodes.|
|**FrameFocus**|Focused node frame.|
|**Frame**|Node frame.|
|**Hover**|Hover frame.|
|**Crosshair**|Node edit crosshair.|
|**Playback**|Playback position indicator.|
|**Border**|Overall border.|
|**Grid V**|Main vertical grid.|
|**Grid V2**|Additional vertical fine grid.|
|**Grid V3**|Additional vertical fine grid.|
|**Grid H**|Main horizontal grid.|
|**Grid H2**|Additional horizontal fine grid.|
|**Font**|Scale font.|
|**Selector**|Selection area fill color.|
|**SelFrame**|Selection area frame.|
|**Scale**|Scale font color.|
