>**setQCAssignmentParamId(qc, assignment, paramID)**

#### Description

Function to set the parameter ID for connecting the corresponding parameter to the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The ``paramID`` argument selects the parameter to be connected with the quick control assignment.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|
|**paramID**|The ID of the parameter to be connected.|number|

#### Example

```lua
-- Connect the coarse parameter of the zone to the specified quick control assignment.

layer = this.parent
zones = layer:findZones(true)
zone = zones[1]
qc = 1
assignment = 1
coarseParamID = zone:getParameterDefinition("Pitch.Coarse").id
  
layer:setQCAssignmentParamId(qc, assignment, coarseParamID)
```

