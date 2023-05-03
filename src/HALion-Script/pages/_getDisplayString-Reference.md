/* ANCHOR: all */

// ANCHOR: function
>**getDisplayString(value)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
The internal precision of parameter values is usually higher than the precision of the corresponding display string on the user interface. You can use this function to obtain the display string of the specified parameter and value. You specify the parameter with [getParameterDefinition](./getParameterDefinition.md).

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**value**|The value for the display string.|number or string|

>&#10069; The data type of the value for getDisplayString must match the data type of the corresponding parameter value.
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the display string of the specified parameter and value.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Get the display string of a value.

value = -2.471
print("value = "..value)
print("Display String = "..this.program:getParameterDefinition("Level"):getDisplayString(-2.471))
```
// ANCHOR_END: example

/* ANCHOR_END: all */