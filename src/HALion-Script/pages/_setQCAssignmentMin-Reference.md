/* ANCHOR: all */

// ANCHOR: function
>**setQCAssignmentMin(qc, assignment, min)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to set the minimum value of the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The ``min`` argument sets the minimum value of the quick control assignment.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|
|**min**|The minimum value to be set.|number|

{{#include _QCAssignmentMinMax-Note.md}}
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Set the minimum value of the quick control assignment depending on the mode.

layer = this.parent
qc = 1
assignment = 1
 
qcMode = layer:getQCAssignmentMode(qc, assignment)
 
if (qcMode == QCAssignmentMode.relative or qcMode == QCAssignmentMode.switchRelative) then
    qcMin = 25
else
    qcMin = 0
end
   
layer:setQCAssignmentMin(qc, assignment, qcMin)
```
// ANCHOR_END: example

/* ANCHOR_END: all */