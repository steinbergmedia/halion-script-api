/* ANCHOR: all */

// ANCHOR: function
>**getQCAssignmentParamId(qc, assignment)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the parameter ID of the parameter that is connected to the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, this.parent defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment with the requested parameter. The indices of the quick controls and the assignments both start counting from 1.

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
Returns the parameter ID of the parameter connected to the specified quick control assignment.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print the parameter ID of the parameter connected to the qc assignment.

layer = this.parent
qc = 1
assignment = 1
 
paramID = layer:getQCAssignmentParamId(qc, assignment)
 
print("Parameter ID of '"..layer.name.."', QC "..qc..", assignment "..assignment..": "..paramID..".")
```
// ANCHOR_END: example

/* ANCHOR_END: all */