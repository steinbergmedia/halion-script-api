/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getDisplayString

>**getDisplayString(value)**

## Description

The internal precision of parameter values is usually higher than the precision of the corresponding display string on the user interface. You can use this function to obtain the display string of the specified parameter and value. You specify the parameter with [getParameterDefinition](./getParameterDefinition.md).

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**value**|The value for the display string.|number or string|

>The data type of the value for getDisplayString must match the data type of the corresponding parameter value.

## Return Values

Returns the display string of the specified parameter and value.

## Example

```lua
-- Get the display string of a value.

value = -2.471
print("value = "..value)
print("Display String = "..this.program:getParameterDefinition("Level"):getDisplayString(-2.471))
```

**See also:** [getParameterDefinition](./getParameterDefinition.md)