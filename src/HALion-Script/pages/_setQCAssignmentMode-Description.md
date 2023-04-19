>**setQCAssignmentMode(qc, assignment, mode)**

#### Description

Function to set the mode of the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The ``mode`` argument sets the mode of the quick control assignment.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**asignment**|The index of the quick control assignment.|number|
|**mode**|The mode to be set. It can be determined via names or indices. See [Quick Control Assignment Modes](./Quick-Control-Assignment-Modes.md) for details.|enum or number|

#### Example

```lua
-- Set the mode of the quick control assignment to absolute and adjust min and max to full range.

layer = this.parent
qc = 1
assignment = 1
    
layer:setQCAssignmentMode(qc, assignment, QCAssignmentMode.absolute)
layer:setQCAssignmentMin(qc, assignment, 0)
layer:setQCAssignmentMax(qc, assignment, 100)
```

