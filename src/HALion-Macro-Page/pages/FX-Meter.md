/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# FX Meter

## Description

The FX Meter template allows you to display input, output, and reduction meter for a number of effects like Compressor, Expander, Limiter, etc. It also contains text controls for peak values and switches for peak resets. The template contains a combination of controls that are already pre-assigned inside the template using "@parameter". You can exchange controls, remove them, or modify the used resources to customize the appearance of the template, provided that you keep the correct parameter connections as defined in the template. Since the template is set up to work with a whole range of effects, it contains elements that are not usable with certain effects, for example there is no need fo a reduction meter for an EQ. In these cases, you can remove the elements that are not needed from the template and save it as a template variation.

## Properties

|Poperty|Description|
|:-|:-|
|**FXType**|Allows you to specify to which effect type you want to connect the meter. To establish a connection, you need to type in the effect type of the effect. See [Effect Types](#effect-types) for a list of the supported types.|
|**Scope**|Allows you to define to which effect the meter is connected.<p>**Example:** Use Scope=@bus:0/@0:Tube Compressor' to connect it to the first Tube Compressor in the first bus.</p>|

### Effect Types

|Module|FX Type|Comment|
|:-|:-|:-|
|Compressor|Compressor||
|Expander|Expander||
|Limter|Limiter||
|Maximizer|Optimiser|
|Brickwall Limiter|BrickwallLimiter||
|Tube Compressor|TubeCompressor|
|Vintage Compressor|VintageCompressor||
|Gate|Gate|no reduction meter|
|Graph EQ|GraphicEQ10|only output meter|
|Morph Filter|MorphFilter|only output meter|
|DJ EQ|HiFiEq|only output meter|

>&#10069; The Studio EQ effect requires the specialized template [Studio EQ Meter](./Studio-EQ-Meter.md).

## Template Components

### Controls and Sub Templates

|Item|Description|
|:-|:-|
|**In_Meter_Left**|A meter control that is connected via Value=@VUInL with the left input channel of the effect.|
|**In_Meter_Right**|A meter control that is connected via Value=@VUInR with the right input channel of the effect.|
|**Reduction_Meter**|A meter control that is connected via Value=@GainReduction with the gain reduction output of the effect.|
|**Out_Meter_Left**|A meter control that is connected via Value=@VUOutL with the left output channel of the effect.|
|**Out_Meter_Right**|A meter control that is connected via Value=@VUOutR with the right output channel of the effect.|
|**Peak_In**|A group containing two items:<ul><li>**Peak_In_Reset:** A switch that resets the input meter peak value. Its Value must be set to "@ResetInputVU".</li><li>**Peak_In_Text:** A text control that displays the input meter peak value. Its Value must be set to "@VUInMax".</li></ul>|
|**Peak_Output**|A group containing two items:<ul><li>**Peak_Out_Reset:** A switch that resets the output meter peak value. Its Value must be set to "@ResetOutputVU".</li><li>**Peak_Out_Text:** A text control that displays the output meter peak value. Its Value must be set to "@VUOutMax".</li></ul>|
|**Peak_Reduction**| A group containing two items:<ul><li>**Peak_Reduction_Reset:** A switch that resets the reduction meter peak value. Its Value must be set to "@ResetReduction".</li><li>**Peak_Reduction_Text:** A text control that displays the reduction meter peak value. Its Value must be set to "@maxgainreduction".</li></ul>|
|**Back**|A background image.|
