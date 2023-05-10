/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Curve Editor

---

**On this page:**

[[_TOC_]]

---


## Description

The Curve Editor template allows you to display and edit curves, such as the custom curve of the velocity curve module or the modulation matrix. The template contains a combination of controls to modify the values of the selected node. These controls are connected using UI parameters, which are be part of the template and that must use the UI variables defined inside the template.

>&#10069; The Curve Editor control cannot be created manually in the GUI Tree. It only comes as part of the Curve Editor template. Please load the [Init Basic Controls.vstpreset](../vstpresets/Init%20Basic%20Controls.vstpreset) from the [Basic Controls](./Exploring-Templates.md#basic-controls) library and reuse this template. You can adapt the look and feel of the Curve Editor template to your own needs.

## Template Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:template}}

## Template Components

![Curve Editor Template](../images/Curve-Editor-Template.PNG)

### UI Variables

The following variables are needed to allow the communication between the curve editor and other controls in the template.

|Variable|Description|Type|Range|
|:-|:-|:-|:-:|
|**curve**|Curvature of the selected node.|float|-10 - 10|
|**valY**|Y value of the selected node.|float|0 - 1|
|**valX**|X value of the selected node.|float|0 - 1|
|**index**|Index of the selected node.|integer|0 - 100|
|**Min**|Mimimum level of the curve.|float|0 - 1|
|**Max**|Maximum level of the curve.|float|0 - 1|

### Controls and Subtemplates

|Item|Description|
|:-|:-|
|**curveeditor**|The curve editor control. The properties FuncData, Minimum, and Maximum are exported and thus are available as template parameters on the instance level of the template. The template parameters must be connected to the corresponding parameters of a Velocity Curve MIDI module, for example. See [Curve Editor Control](#curve-editor-control) for more details about the configuration of the control.|
|**Slider Max**|A slider template with an exported value (Max) to be connected on a template instance level. For example, to the Maximum parameter of a Velocity curve module.|
|**Slider Min**|A slider template with an exported value (Min) to be connected on a template instance level. For example, to the Maximum parameter of a Velocity curve module.|
|**Edit**|A group of valuebox templates for displaying and editing the values of the selected node. The controls are connected to the curve editor control via the variables defined above.<ul><li>**ValX:** A valuebox template to control the X value of the selected node (Value = @valX).</li><li>**ValY:** A valuebox template to control the Y value of the selected node (Value = @valY).</li><li>**Curve:** A valuebox template to control the curvature value of the selected node (Value = @curve).</li><li>**Index:** A valuebox template to set the selected node (Value = @index).</li></ul>|
|**image**|A [Bitmap](./Bitmap.md) resource for an embedded frame around the curve editor.|


### Curve Editor Control

The look and feel of the Curve Editor control can be configured with the following properties and colors.

#### Properties

|Property|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
|**Style**|<ul><li>**Bipolar:** Activate this style for bipolar curves like pitch or pan.</li><li>**Cross:** Shows cross lines when editing a node.</li><li>**Grid:** Shows a grid behind the curve.</li><li>**Play Pos:** Shows the position of the current value on the curve.</li><li>**Nodes:** Shows the nodes.</li><li>**Add/Rem:** Allows you to add and remove nodes, otherwise a fixed number of nodes is used.</li><li>**Sel Node:** Allows to select a node.</li><li>**Scale X:** Shows a scale for the X-axis.</li><li>**Scale Y:** Shows a scale for the Y-axis.</li></ul>|
|**FuncData**|Export this to the instance level of the template and connect the template parameter CurveData to the FuncData parameter of the Velocity Curve MIDI module, for example.|
|**Grid**|<ul><li>**MinX:** Defines the minimum value of the horizontal grid.</li><li>**MaxX:** Defines the maximum value of the horizontal grid.</li><li>**MinY:** Defines the minimum value of the vertical grid.</li><li>**MaxY:** Defines the maximum value of the vertical grid.</li></ul>|
|**Selected Node**|<ul><li>**Index:** The number of the selected node (connected via "@index").</li><li>**X:** The x-value of the selected node (connected via "@valX").</li><li>**Y:** The y-value of the selected node (connected via "@valY").</li><li>**Curve:** The curvature of the selected node (connected via "@curve").</li></ul>|
|**Minimum**|Compresses the curve vertically from the bottom. Export this to the instance level of the template and connect the template parameter Min to the Minimum parameter of the Velocity Curve MIDI module, for example.|
|**Maximum**|Compresses the curve vertically from the top. Export this to the instance level of the template and connect the template parameter Max to the Maximum parameter of the Velocity Curve MIDI module, for example.|
|**Play Pos**|Allows you to connect a parameter that sends the current value on the curve, e.g., input to output velocity. The Play Pos style must be activated to get access to this.|

#### Colors

>&#10069; Some colors are only available if the corresponding style options are active.

|Property|Description|
|:-|:-|
|**Line**|The color of the lines between the nodes.|
|**Fill**|Fill color of the nodes.|
|**FillSelected**|Fill color of the selected node.|
|**FrameFocus**|Frame color of the focussed node.|
|**Frame**|Frame color of the nodes.|
|**Hover**|Hover frame.|
|**Crosshair**|Node edit crosshair color.|
|**Play Pos**|Color of the position indicator of the current value on the curve.|
|**Border**|Overall border color.|
|**Grid V**|Main vertical grid color.|
|**Grid V2**|Additional vertical fine grid color.|
|**Grid V3**|Additional vertical fine grid color.|
|**Grid H**|Main horizontal grid color.|
|**Grid H2**|Additional horizontal fine grid color.|
|**Selector**|Selection area fill color.|
|**SelFrame**|Selection area frame.|
|**Scale**|Scale font color.|
