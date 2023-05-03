/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Mixer Channel

## Description

The Mixer Channel template allows you to control all important bus parameters with a single template. The template contains a combination of controls that are already pre-assigned inside the template using "@parameter". You can exchange controls, remove them, or modify the used resources to customize the appearance of the channel, provided that you keep the correct parameter connections as defined in the template.

## Properties

|Poperty|Description|
|:-|:-|
|**bus**|Allows you to specify which bus you want to control. Use @ to connect the bus.<p>**Example:** Use "@bus:0"  for the first bus in the program</p>|
|**TargetBusses**|Allows you to specify the selectable output busses.<p>**Example:** Use buslist='Bus A; Bus B' to show these two busses in the outout selector of the channel. For more options, see Ch_Output below.|

## Template Components

### Controls and Sub Templates

|Item|Description|
|:-|:-|
|**Ch_Output**|This template contains the necessary elements to specify the output of a bus. It contains the following elements:<ul><li>**Menu:** A menu control that opens a context menu showing all available outputs. The Value must be set to "@TargetBusMenu".</li><li>**Name:** A text control showing the name of the selected output. The Value must be set to "@TargetBusMenu".</li><li>*Image:* A background image.</li></ul>To filter the outputs that are made available by the menu, you can configure the menu control by adding one of the following tags to the value name (separated by spaces):<ul><li>**default:** Use thisto route the audio to the default bus (usually the next bus higher up in the hierarchy).</li><li>**default='name':** Same as above, but 'name' is shown as text instead of '--'.</li><li>**local:** Shows all available busses higher up in the hierarchy.</li><li>**buslist='BusName1; BusName2; ...':** Allows to specify a list of busses.</li></ul>Additionally, you can set the following tags:<ul><li>**aux:** Shows the plug-in aux busses.</li><li>**noplug:** Hides the plug-in out busses.</li></ul>**Example:** @TargetBusMenu local aux noplug|
|**Ch_Pan**|This template contains the necessary elements to control the pan of the bus. It contains the following elements:<ul><li>**Slider:** A slider control. The Value is exported to the template and set to @Pan inside the Mixer channel.</li><li>**Image:** A background image.</li></ul>|
|**Ch_Meter**|References the "Bus Meter V Peak" template.<ul><li>**Peak Value** is connected to the corresponding bus using { } and the path to the bus as specified in the Mixer channel template,e.g., "{bus}/@id:19".</li><li>**Peak Reset** is connected to the corresponding bus using { } and the path to the bus as specified in the Mixer channel template,e.g., "{bus}/@id:21".</li></ul>|
|**Ch_Level**|A text showing the level slider value. The Value must be set to "@LogLevel."|
|**Ch_Slider**|This template contains the necessary elements to control the level of the bus. It contains the following elements:<ul><li>**Slider:** A slider control. The Value is exported to the template and set to "@LogLevel" inside the Mixer channel.</li><li>**Scale:** An image showing a dB scale.</li><li>**Guide:** An image showing the slider guide.</li></ul>|
|**SoloMute**|A group of two templates: Ch_Mute and Ch_Solo. These provide the bus Solo/Mute functionality inside a SoloMute group.<ul><li>**Ch_Mute:** This template contains the necessary elements to control and show the mute state of the bus. It contains the following elements:</li><ul><li>**Switch:** An invisible switch control which contains a hover layer that lights up the underlying VisualState animation control when hovering over it with the mouse. The Value is exported to the template and set to "@Mute Layer" inside the Mixer channel.</li><li>**VisualState:** An animation showing the mute state (Mute Off, Mute On, Implicit Mute).</li></ul><li>**Ch_Solo:** This template contains the necessary elements to control and show the solo state of the bus. It contains the following elements:</li><ul><li>**Switch:** An invisible switch control which contains a hover layer that lights up the underlying VisualState animation control when hovering over it with the mouse. The Value is exported to the template and set to @Solo Layer inside the Mixer channel.</li><li>**VisualState:** An animation showing the solo state (Solo Off, Solo On, Implicit Solo).</li></ul>|
|**Ch_Name**|This template displays the name of the object in which it is located. In this case, the bus, which means that it will display the name of the connected bus.<ul><li>**Text:** A read-only text control with Value set to @name. This connection only works inside this template.</li></ul>|
|**Back:**|A background image.|