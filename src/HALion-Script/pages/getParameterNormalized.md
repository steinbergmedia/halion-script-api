/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getParameterNormalized

>**getParameterNormalized(nameOrID)**

## Description

Function to read the current value of a parameter in the normalized range from 0 to 1.0. The parameter can be determined by name or ID.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|

## Return Values

Returns the current value of the parameter in the normalized range from 0 to 1.0 or nil if the parameter doesn't exist. If the parameter is not numeric, the function returns the same as getParameter

## Example

```lua
-- Print the normalized value of the parent layer's level parameter.

function onLoadIntoSlot()
    print("Level = "..this.parent:getParameterNormalized("Level")) -- via name
    print("Level = "..this.parent:getParameterNormalized(38)) -- via ID
end
```

**See also:** [setParameterNormalized](./setParameterNormalized.md), [getParameter](./getParameter.md), [setParameter](./setParameter.md), [hasParameter](./hasParameter.md)