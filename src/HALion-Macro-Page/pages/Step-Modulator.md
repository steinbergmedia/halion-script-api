/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Step Modulator

---

**On this page:**

[[_TOC_]]

---

## Description

The Step Modulator is intended to control HALion's step modulator. It provides all necessary properties to be connected to the engine parameters. Furthermore, there are properties for index, level, and level12 of the selected node and a snap option, which only affect the GUI parameters and not the engine parameters. These properties can be connected using UI variables.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
|**Steps**|The number of steps. This property must be connected to the engine parameter Steps and further display controls.|
|**Slope**|The Slope Mode. This property must be connected to the engine parameter Slope to show the slope. Connect additional controls, e.g., a menu, to set the slope mode.|
|**Slope Amnt**|This property must be connected to the engine parameter SlopeAmount to show the slope. Connect additional controls, e.g., a knob, to set the slope.|
|**Show All**|Activate this option to show all steps with a fixed width. When dectivated, the width of the individual steps scales with the number of steps as set in **Steps**, to fill the full size of the control.|
|**Advanced Editing** {{#include ../../_Version.md:halion640}}|Activate this option to provide additional editing possibillities. These are either available as context menu entries or as line editing functions using modifier keys (Shift, Alt). These editing functions were originally made to work best inside HALion's Stepmodulator and Flexphraser. In case the control is used to control other custom script modules, where these functions are not needed or need to work differently, they can be deactivated.|
|**Play Pos**{{#include ../../_Version.md:halion710}}|Shows the current playback position on the curve.
|**Height** {{#include ../../_Version.md:halion6410}}|Defines how the indivdual step values are displayed.<ul><li>&nbsp;&nbsp;0 = Standard look, with bars starting at 0 and going up to the adjusted value.</li><li>>0 = Bars with a defined heigth in pixels for continous parameters.</li><li>&nbsp;&nbsp;1 = Bars with a an automatic height or stepped parameters. The height of a bar correponds to 1/number of steps.</li></ul>|
|**Step 1-32**|The Step levels. This property can be connected to the engine stepmodulator parameters Step1-32.
|**Length** {{#include ../../_Version.md:halion640}}|If the step modulator is used to control a custom script module, the Length parameter can be used to adjust the length of each step.|
|**Enable** {{#include ../../_Version.md:halion640}}|If the step modulator is used to control a custom script module, the Enable parameter can be used to turn individual steps on and off.|

[Jump to Top ](#step-modulator)

## UI Variables

Create variables to connect the Step Modulator properties with the engine and further controls.

|Poperty|Variable|Description|Type|Range|
|:-|:-|:-|:-|:-:|
|**Index**|index|The index of the selected node.|integer|1 to 32|
|**Level**|level|The level of the selected node.|float|-100 to 100|
|**Level 12**|level12|The level in fractions of 12 (used when Snap is active).|float|-12 to 12|
|**Snap**|snap|Activates the snap line.|integer|0, 1|

[Jump to Top ](#step-modulator)

## Colors

|Poperty|Description|
|:-|:-|
|**Step0**|Fill color of all even steps with index 0, 2, 4, ..., 32.|
|**Step1**|Fill color of all odd steps with index 1, 3, 5, ..., 31.|
|**Back0**|Background color of all even steps with index 0, 2, 4, ..., 32.|
|**Back1**|Background color of all odd steps with index 1, 3, 5, ..., 31.|
|**Hover0**|Hover fill color of all even steps with index 0, 2, 4, ..., 32.|
|**Hover1**|Hover fill color of all odd steps with index 1, 3, 5, ..., 31.|
|**Line Hov0**|Line hover color of all even steps with index 0, 2, 4, ..., 32.|
|**Line Hov1**|Line hover color of all odd steps with index 1, 3, 5, ..., 31.|
|**Line Drag0**|Line drag color of all even steps with index 0, 2, 4, ..., 32.|
|**Line Drag1**|Line drag color of all odd steps with index 1, 3, 5, ..., 31.|
|**Line Sel0**|Line selection color of all even steps with index 0, 2, 4, ..., 32.|
|**Line Sel1**|Line selection color of all odd steps with index 1, 3, 5, ..., 31.|
|**Middle Line**|Middle grid line color.|
|**Snap Line 0**|Primary snap line color.|
|**Snap Line 1**|Secondary snap line color.|
|**Line Draw**|Line draw color.|

[Jump to Top ](#step-modulator)