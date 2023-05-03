/* ANCHOR: all */

// ANCHOR: function
>**getQCAssignmentCurve(qc, assignment)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the curve value of the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment with the requested curve value. The indices of the quick controls and the assignments both start counting from 1.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the curve value of the specified quick control assignment. The value range is -100% to +100%.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print the curve value of the qc assignment.

layer = this.parent
qc = 1
assignment = 1
  
qcCurve = layer:getQCAssignmentCurve(qc, assignment)
   
print("Curve value of '"..layer.name.."', QC "..qc..", assignment "..assignment..": "..qcCurve..".")
```
// ANCHOR_END: example

/* ANCHOR_END: all */