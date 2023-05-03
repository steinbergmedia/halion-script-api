/* ANCHOR: all */

// ANCHOR: function
>**hasParameter(nameOrID)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to check if a parameter exists. The parameter can be determined by name or ID.

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
Returns ``true`` if the parameter exists or ``false`` if not.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
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
// ANCHOR_END: example

/* ANCHOR_END: all */