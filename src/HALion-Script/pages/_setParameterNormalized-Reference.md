/* ANCHOR: all */

// ANCHOR: function
>**setParameterNormalized(nameOrID, value)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to set the value of a parameter in the normalized range from 0 to 1.0. The parameter can be determined by name or ID. This function has no effect if the parameter does not exist or if the value is of the type string.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|
|**value**|The value you want to set in the normalized range from 0 to 1.0.|number|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Set the normalized value of the parent layer's level parameter.

function onLoadIntoSlot()
    this.parent:setParameterNormalized("Level", 0.5) -- Set via name.
    this.parent:setParameterNormalized(38, 0.5)      -- Set via ID.
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */