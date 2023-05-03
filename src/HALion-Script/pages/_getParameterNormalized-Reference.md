/* ANCHOR: all */

// ANCHOR: function
>**getParameterNormalized(nameOrID)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to read the current value of a parameter in the normalized range from 0 to 1.0. The parameter can be determined by name or ID.


**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the current value of the parameter in the normalized range from 0 to 1.0 or nil if the parameter doesn't exist. If the parameter is not numeric, the function returns the same as getParameter
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print the normalized value of the parent layer's level parameter.

function onLoadIntoSlot()
    print("Level = "..this.parent:getParameterNormalized("Level")) -- via name
    print("Level = "..this.parent:getParameterNormalized(38))      -- via ID
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */