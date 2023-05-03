/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# FlexPhraserStepSeq

## Description

The FlexPhaserStepSeq template allows you to control HALion's FlexPhraser User phrase editor. It combines several stepmodulator controls with additional value boxes for Key Transpose and Key Replace and switches that modifiy the entire phrase. These controls are alle preconfigured within the template and use dedicated parameters which are not supposed to change.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the FlexPhraserStepSeq.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Scope**|Defines which FlexPhraser is controlled. For example: "@0:FlexPhraser" controls the first FlexPhraser in the program.|

## Template Components

### UI Variables

These variables are defined to allow the communication between the stepmodulator control and other controls in the template.

|Variable|Description|Type|Range|
|:-|:-|:-|:-|
|**VarTransp**|List of transpose variables used by "templatelistview Transpose".|string list|@Transpose1 - 32|
|**VarKey**|List of key variables used by "templatelistview Key".|string list|@Key1 - 32|
|**VarEnable**|List of enable variables used by "templatelistview Enable".|string list|@Enable1 - 32|
|**VarTie**|List of tie variables used by "templatelistview StepTie".|string list|@Tie1 - 32|
|**VarTransposeKey**|Used to switch between pages of "TranspKey" stack.|integer|0, 1|
|**VarKeyLabel**|List of numbers used as labels in "templatelistview Enable".|string list|1 - 32|
|**VarStepPages**|Used to switch between pages of "Step Pages" stack.|integer|0 - 3|

### Controls and Sub Templates

|Item|Description|
|:-|:-|
|**Disable**|A disable control containing all further elements, and is used to disable them if the FlexPhraser variation is not set to "User Mode". Its "Value" must be set to "@UserMode".|
|**Sw Vel, Sw C1, Sw C2, Sw C3**|Switches that are used to switch between the velocity and controller lane pages. "Value" is set to "@VarStepPages".|
|**ArpMod**|A stack that switches between additional pages containing controls to specify which MIDI controller has to be sent by the corresponding controller lane. It is switched using the "VarStepPages" variable.|
|**LED pages**|A stack that switches between two LED chain bitmap displays. They are both identical. The first LED chain is not connected to the engine and is used when UserMode is set to off. The second LED is connected to the engine via @CurrentStep. This connection only works inside the FlexPhraserStepSeq template.|
|**StepTie**|A Template List used to control the Tie parameter of the 32 steps. It uses the "StepTie" template as a switch. The switch can be disabled in case the range of the phrase is smaller than the index of the step. (@disableStepParams) This is managed by the FlexPhraserStepSeq.lua script that is attached to the FlexPhraserStepSeq template.|
|**Enable**|A Template List used to control the Enable parameter of the 32 steps. It uses the "StepSwitch On/Off " template as a switch. The switch can be disabled in case the range of the phrase is smaller than the index of the step. (@disableStepParams) This is managed by the FlexPhraserStepSeq.lua script that is attached to the FlexPhraserStepSeq template. The Label parameter uses the "VarKeyLabel" stringlist variable to set the label for each step.|
|**TranspKey**|A stack switching between the Transpose and Key Values. Both values are managed by Template Lists. Transpose uses the "VarTrans" string list variable, Key the "VarKey" string list variable. Both can be disabled in case the range of the phrase is smaller than the index of the step. (@disableStepParams) This is managed by the FlexPhraserStepSeq.lua script that is attached to the FlexPhraserStepSeq template.|
|**Sw_TranspKey**|A switch that switches between the Transpose and Key values. The connection is set using the "VarTranposeKey" variable.|
|**Duplicate**|A push button that duplicates the active steps. The connection is set using the internal "Duplicate" command and only works inside the FlexPhraserStepSeq template.|
|**Reverse**|A push button that reverses the order of the active steps. The connection is set using the internal "Reverse" command and only works inside the FlexPhraserStepSeq template.|
|**Duplicate**|A push button that duplicates the active steps. The connection is set using the internal "Duplicate" command and only works inside the FlexPhraserStepSeq template.|
|**ShiftRight**|A push button that shifts the active steps to the right. The connection is set using the internal "ShiftPhraseRight" command and only works inside the FlexPhraserStepSeq template.|
|**ShiftLeft**|A push button that shifts the active steps to the left. The connection is set using the internal "ShiftPhraseLeft" command and only works inside the FlexPhraserStepSeq template.|
|**PatternLength**|A slider to change the number of steps.|
|**Step Pages**|A stack that contains four stepmodulator controls, one for the step velocities and three for the available controller lanes. It is switched using the "VarStepPages" variable.<ul><li>**stepmodulator:** A Stepmodulator controlling the step velocities. The required "Format" setting is "Level%d;Length%d;Enable%d". This allows to control Level, Length, and the Enable state of the steps. The connection only works inside the FlexPhraserStepSeq template.</li><li>**stepmodulator C1:** A Stepmodulator controlling the first controller lane. The required "Format" setting is "Control1_%d". This allows to control the controller level of the of the steps. The connection only works inside the FlexPhraserStepSeq template.</li><li>**stepmodulator C2:** A Stepmodulator controlling the second controller lane. The required "Format" setting is "Control2_%d". This allows to control the controller level of the of the steps. The connection only works inside the FlexPhraserStepSeq template.</li><li>**stepmodulator C3:** A Stepmodulator controlling the third controller lane. The required "Format" setting is "Control3_%d". This allows to control the controller level of the of the steps. The connection only works inside the FlexPhraserStepSeq template.</li></ul>|
