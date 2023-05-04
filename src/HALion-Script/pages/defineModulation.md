/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# defineModulation

>**defineModulation(name, bipolar)**

## Description

Function to declare a modulation output for the script module, which can be assigned in the modulation matrix of the zone. The declared modulation outputs can be found on the Modulation Module submenu of the modulation matrix's Source menu. This function can be used multiple times to declare different modulation outputs.

>&#10069; This function only declares the modulation output. It does not calculate the modulation signal. The modulation signal must be generated with [calcModulation](./calcModulation.md).


**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**name**|The name of the modulation output as it will be shown in the modulation matrix of the zone.|string|
|**bipolar**|If this is set to ``true``, the output is expected to be in the range from -1.0 to 1.0. If this is set to ``false``, the output is expected to be in the range from 0.0 to 1.0.|boolean|

## Example

```lua
function onInit()
   defineModulation("Mod 1", false) -- unipolar
   defineModulation("Mod 2", true)  -- bipolar
end
```

**See also:** [calcModulation](./calcModulation.md)