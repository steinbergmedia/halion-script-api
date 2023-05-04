/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# assignAutomation

>**assignAutomation(element, nameOrID, index, scope)**

## Description

Function to assign a parameter to an automation parameter. The arguments ``element`` and ``nameOrID`` specify the parameter to be assigned. The ``index`` argument determines to which automation parameter the parameter will be assigned. If the index argument is ``nil`` or not set, the parameter will be assigned to the next free automation parameter. The scope determines the part of the program that will be affected by the automation parameter. You specify the scope by setting the ``scope`` argument to the [Element](./Element.md) object that corresponds to the desired part of the program. The function returns the index to which the automation parameter was assigned to. This is useful if the automation parameter was assigned to the next free automation parameter.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**element**|The [Element](./Element.md) object of the parameter to be assigned.|[Element](./Element.md)|
|**nameOrID**|The name or ID of the parameter.|string or number|
|**index**|The index of the automation parameter, or ``nil``.|number or ``nil``, optional
|**scope**|The [Element](./Element.md) object that will be affected by the automation parameter.|[Element](./Element.md)|

## Return Values

Returns the index to which the automation parameter was assigned to.

## Example

```lua
-- Assign filter cutoff, resonance and envelope amount to the next free automation.
zones = this.program:findZones(true)
parameters = { "Filter.Cutoff", "Filter.Resonance", "Filter.EnvAmount" }
for i, parameter in ipairs(parameters) do
    local automationIndex
    automationIndex = assignAutomation(zones[1], parameter, automationIndex, this.program)
end
```

**See also:** [forgetAutomation](./forgetAutomation.md), [getAutomationIndex](./getAutomationIndex.md)