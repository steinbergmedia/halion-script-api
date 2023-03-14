/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# hasParameter

>**hasParameter(nameOrID)**

## Description

Function to check if a parameter exists. The parameter can be determined by name or ID.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|

## Return Values

Returns ``true`` if the parameter exists or ``false`` if not.

## Example

```lua
-- Check if the elements in the Program Tree have filter cutoff.
function onLoadIntoSlot()
    childs = this.program:findChildren(true)
    for i, child in ipairs(childs) do
        if child:hasParameter("Filter.Cutoff") then
            print(child.name.." has filter cutoff.")
        else
            print(child.name.." has no filter cutoff.")
        end
    end
end
```

**See also:** [getParameter](./getParameter.md), [setParameter](./setParameter.md), [getParameterNormalized](./getParameterNormalized.md), [setParameterNormalized](./setParameterNormalized.md)