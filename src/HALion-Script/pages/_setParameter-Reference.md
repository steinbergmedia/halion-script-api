/* ANCHOR: all */

// ANCHOR: function
>**setParameter(nameOrID, value, undo)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to set the value of a parameter. The parameter can be determined by name or ID. The function will have no effect if the parameter does not exist.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|
|**value**|The value that you want to set.|The new value must match the data type of the parameter.|
{{#include ./_setParameter-undo.md}}
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Set the value of the Level parameter of the parent layer.

function onLoadIntoSlot()
    this.parent:setParameter("Level", 0) -- Set via name.
    this.parent:setParameter(38, 0)      -- Set via ID.
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */