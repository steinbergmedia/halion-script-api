/* ANCHOR: all */

// ANCHOR: function
>**getQCAssignmentMode(qc, assignment)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the mode that is set for the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment with the requested mode. The indices of the quick controls and the assignments both start counting from 1.

**Available in:** Controller, Processor.
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
Returns the mode that is set for the specified quick control assignment as a number. The mode can be determined via names or indices. See [Quick Control Assignment Modes](./Quick-Control-Assignment-Modes.md) for details.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print the mode of the qc assignment.
layer = this.parent
qc = 1
assignment = 1
   
qcMode = layer:getQCAssignmentMode(qc, assignment)
  
if qcMode == QCAssignmentMode.absolute then
    qcModeName = "Absolute"
elseif qcMode == QCAssignmentMode.relative then
    qcModeName = "Relative"
elseif qcMode == QCAssignmentMode.switch then
    qcModeName = "Switch"
elseif qcMode == QCAssignmentMode.switchRelative then
    qcModeName = "Switch Relative"
end
    
print("Mode of '"..layer.name.."', QC "..qc..", assignment "..assignment..": "..qcModeName..".")
```
// ANCHOR_END: example

/* ANCHOR_END: all */