/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# setQCAssignmentCurve

>**setQCAssignmentCurve(qc, assignment, curve)**

## Description

Function to set the curve value of the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The ``curve`` argument sets the curve value of the quick control assignment.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**asignment**|The index of the quick control assignment.|number|
|**curve**|The curve value in the range -100 % to +100 %.|number|

## Example

```lua
-- Set the curve of the quick control assignment to -100 %.

layer = this.parent
qc = 1
assignment = 1
   
layer:setQCAssignmentCurve(qc, assignment, -100)
```

**See also:**  [setQCAssignmentParamId](./setQCAssignmentParamId.md), [setQCAssignmentScope](./setQCAssignmentScope.md), [setQCAssignmentMin](./setQCAssignmentMin.md), [setQCAssignmentMax](./setQCAssignmentMax.md), [setQCAssignmentMode](./setQCAssignmentMode.md), [setQCAssignmentBypass](./setQCAssignmentBypass.md), [addQCAssignment](./addQCAssignment.md), [removeQCAssignment](./removeQCAssignment.md), [getNumQCAssignments](./getNumQCAssignments.md), [getQCAssignmentParamId](./getQCAssignmentParamId.md), [getQCAssignmentScope](./getQCAssignmentScope.md), [getQCAssignmentMin](./getQCAssignmentMin.md), [getQCAssignmentMax](./getQCAssignmentMax.md), [getQCAssignmentCurve](./getQCAssignmentCurve.md), [getQCAssignmentMode](./getQCAssignmentMode.md), [getQCAssignmentBypass](./getQCAssignmentBypass.md), [Quick Control Assignment Modes](./Quick-Control-Assignment-Modes.md)