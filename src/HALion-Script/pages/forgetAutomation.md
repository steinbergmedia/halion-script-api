/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# forgetAutomation

>**forgetAutomation(element, nameOrID)**

## Description

Function to remove the specified parameter from its automation parameter.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**element**|The [Element](./Element.md) object of the parameter to be removed.|[Element](./Element.md)|
|**nameOrID**|The name or ID of the parameter.|number|

## Example

```lua
-- Forget the automation assignments of all parameters of all zones.

zones = this.program:findZones(true)

paramDefs = zones[1].parameterDefinitions

for i, zone in ipairs(zones) do
    for j, paramDef in ipairs(paramDefs) do
        forgetAutomation( zone, paramDef.id)
    end
end
```

**See also:** [assignAutomation](./assignAutomation.md), [getAutomationIndex](./getAutomationIndex.md)