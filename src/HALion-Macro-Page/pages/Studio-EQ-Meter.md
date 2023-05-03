/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Studio EQ Meter

## Description

The Studio EQ Meter template allows you to display the output of the Studio EQ effect module. It also contains a text control for the peak value and a switch for peak reset. This combination of controls is are already pre-assigned inside the template using "@parameter". You can exchange controls, remove them, or modify the used resources to customize the appearance of the template, provided that you keep the correct parameter connections as defined in the template.

## Properties

|Poperty|Description|
|:-|:-|
|**Scope**|Allows you to define to which eq the meter is connected.<p>**Example:** Use Scope=@bus:0/@0:Studio EQ' to connect it to the first Studio EQ in the first bus.|

### Controls and Sub Templates

|Item|Description|
|:-|:-|
|**Out_Meter_Left**|A meter control that is connected via Value=@VUOutL with the left output channel of the EQ.|
|**Out_Meter_Right**|A meter control that is connected via Value=@VUOutR with the right output channel of the EQ.|
|**Peak_Output**|A group containing three items:<ul><li>**Peak_Out_Reset:** A switch that resets the output meter peak value. Its Value must be set to "@ResetOutputVU".</li><li>**Peak_Out_Text:** A text control that displays the output meter peak value. Its Value must be set to "@VUOutMax".</li><li>**Peak_Back:** A background image.</li></ul>|
|**Back**|A background image for the meters.|
