>**setQCAssignmentMax(qc, assignment max)**

#### Description

Function to set the maximum value of the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The ``max`` argument sets the maximum value of the quick control assignment.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|
|**max**|The maximum value to be set.|number|

{{#include _QCAssignmentMinMax-Note.md}}

#### Example

```lua
-- Set the maximum value of the quick control assignment depending on the mode.

layer = this.parent
qc = 1
assignment = 1
  
qcMode = layer:getQCAssignmentMode(qc, assignment)
  
if (qcMode == QCAssignmentMode.relative or qcMode == QCAssignmentMode.switchRelative) then
    qcMax = 75
else
    qcMax = 100
end
    
layer:setQCAssignmentMax(qc, assignment, qcMax)
```

