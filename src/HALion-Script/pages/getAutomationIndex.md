/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getAutomationIndex

>**getAutomationIndex(element, nameOrID)**

#### Description

Function to retrieve the index of the automation parameter to which the specified parameter is assigned.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**element**|The [Element](./Element.md) object of the parameter to be connected.|[Element](./Element.md)|
|**nameOrID**|The ID of the parameter.|number|

#### Return Values

Returns the the index of the automation parameter to which the specified parameter is assigned, or ``nil`` if the specified parameter is not assigned.

#### Example

```lua
-- Assign pitch octave, coarse and fine to the next free automation.

zones = this.program:findZones(true)

parameters = { "Pitch.Octave", "Pitch.Coarse", "Pitch.Fine" }

for i, parameter in ipairs(parameters) do
    local automationIndex
    for j, zone in ipairs(zones) do
        assignAutomation(zone, parameter, automationIndex)
        automationIndex = getAutomationIndex(zone, parameter)
    end
end
```

**See also:** [assignAutomation](./assignAutomation.md), [forgetAutomation](./forgetAutomation.md)