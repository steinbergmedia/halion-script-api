/* ANCHOR: all */

// ANCHOR: function
>**getQCAssignmentMin(qc, assignment)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the minimum value of the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment with the requested minimum value. The indices of the quick controls and the assignments both start counting from 1.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the minimum value of the specified quick control assignment.

{{#include _QCAssignmentMinMax-Note.md}}
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print the minimum value of the qc assignment as displayed in HALion.
layer = this.parent
qc = 1
assignment = 1
 
qcMode = layer:getQCAssignmentMode(qc, assignment)
qcMin = layer:getQCAssignmentMin(qc, assignment)
 
-- Convert to bipolar range if the qc is of the type relative or switch relative.
if (qcMode == QCAssignmentMode.relative or qcMode == QCAssignmentMode.switchRelative) then
    qcMin = qcMin * 2 - 100
end
  
print("Minimum value of '"..layer.name.."', QC "..qc..", assignment "..assignment..": "..qcMin..".")
```
// ANCHOR_END: example

/* ANCHOR_END: all */