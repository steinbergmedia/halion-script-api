/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Step Modulator(Template)

## Description

The StepModulator template allows you to control HALion's step modulator. It combines the stepmodulator view, additional valueboxes and a switches. These are pre-configured to access the stepmodulator UI and use dedicated UI parameters that are defined as variables.

## Properties

Poperty|Description|
|:-|:-|
|**Name**|The name of the StepModulator.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Step1-32**|Connect these to the steps of the StepMod (zone parameters).|
|**Steps**|Connect this to the Steps parameter of the StepMod (zone parameter).|
|**Slope**|Connect this to the Slope parameter of the StepMod (zone parameter).|
|**Slope Amt**|Connect this to the SlopeAmount parameter of the StepMod (zone parameter).|

## Template Components

### UI Variables

These variables are defined to allow the communication between the stepmodulator control and other controls in the template.

|Variable|Description|Type|Range|
|:-|:-|:-|:-|
|**index**|Index of the selected node.|integer|n.a.|
|**level**|Level of the selected node.|float|0 - 100|
|**level12**|Level in fractions of 12 (used when snap is active).|float|-12 to 12|
|**snap**|Activates snap lines.|integer|0, 1|
|shiftleft|Shifts the pattern to the left.|integer|	0, 1|
|shiftright|Shifts the pattern to the right.|integer|0, 1|
|reverse|Reverses the pattern.|integer|0, 1|

### Controls and Sub Templates

|Item|Description|
|:-|:-|
|**Snap**|This switch activates the Snap option. It is connected to the stepmodulator using the "snap" variable.|
|**Lev/Lev12**|This stack contains two value box templates. The stack switches when Snap is turned on, using the "snap" variable.<ul><li>**Lev100:**A value box that is connected to the step stepmodulator using the "level" variable. Controls the selected step value.</li><li>**Lev12:** A value box that is connected to the step stepmodulator using the "level12" variable. Controls the selected step value (Snap = On).</li></ul>|
|**Index**|A value box template connected to the stepmodulator using the "index" variable. Selects the step.|
|**stepmodulator**|For details see [Step Modulator](./Step-Modulator.md) control.|
|**image**|A frame bitmap.|
|**PushButton Shift L**|A switch connected to the Shift Left parameter of the stepmodulator using the "shiftleft" variable.|
|**PushButton Shift R**|A switch connected to the Shift Right parameter of the stepmodulator  using the "shiftright" variable.|
|**PushButton Revers**|A switch connected to the Reverse parameter of the stepmodulator using the "reverse" variable.|

>&#10069; If you do not need these controls, you can remove them from the template or instantiate a stepmodulator directly on the macro page instead.

