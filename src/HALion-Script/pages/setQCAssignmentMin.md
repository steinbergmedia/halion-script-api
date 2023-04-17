/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# setQCAssignmentMin

>**setQCAssignmentMin(qc, assignment, min)**

## Description

Function to set the minimum value of the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The ``min`` argument sets the minimum value of the quick control assignment.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|
|**min**|The minimum value to be set.|number|

>The value range of the minimum value is always 0 to 100 %, even if the mode of the quick control assignment is set to Relative or Switch Relative.

## Example

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

**See also:** [setQCAssignmentParamId](./setQCAssignmentParamId.md), [setQCAssignmentScope](./setQCAssignmentScope.md), [setQCAssignmentMax](./setQCAssignmentMax.md), [setQCAssignmentCurve](./setQCAssignmentCurve.md), [setQCAssignmentMode](./setQCAssignmentMode.md), [setQCAssignmentBypass](./setQCAssignmentBypass.md), [addQCAssignment](./addQCAssignment.md), [removeQCAssignment](./removeQCAssignment.md), [getNumQCAssignments](./getNumQCAssignments.md), [getQCAssignmentParamId](./getQCAssignmentParamId.md), [getQCAssignmentScope](./getQCAssignmentScope.md), [getQCAssignmentMin](./getQCAssignmentMin.md), [getQCAssignmentMax](./getQCAssignmentMax.md), [getQCAssignmentCurve](./getQCAssignmentCurve.md), [getQCAssignmentMode](./getQCAssignmentMode.md), [getQCAssignmentBypass](./getQCAssignmentBypass.md), [Quick Control Assignment Modes](./Quick-Control-Assignment-Modes.md)