/* ANCHOR: all */

// ANCHOR: function
>**removeQCAssignment(qc, assignment)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to remove a quick control assignment from the specified layer and quick control. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control with the assignment to be removed. The ``assignment`` argument is the index of the quick control assignment to be removed. The indices of the quick controls and the assignments both start counting from 1.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control with the assignment to be removed.|number|
|**assignment**|The index of the quick control assignment to be removed.|number|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Remove all quick control assignments from the specified layer and qc.
 
function clearQC(layer, qc)
    local assignments = layer:getNumQCAssignments(qc)
    if assignments > 0 then
        for i = assignments, 1, -1 do
            layer:removeQCAssignment(qc, i)
        end
        print(assignments.." assignments have been removed from '"..layer.name.."', QC "..qc..".")
    else
        print("No assignments found on '"..layer.name.."', QC "..qc..".")
    end
end
 
clearQC(this.parent, 1)
```
// ANCHOR_END: example

/* ANCHOR_END: all */