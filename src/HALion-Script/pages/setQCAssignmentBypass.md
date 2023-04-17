/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# setQCAssignmentBypass

>**setQCAssignmentBypass(qc, assignment, bypass)**

## Description

Function to set the bypass state of the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The ``bypass`` argument sets the bypass state of the quick control assignment.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|
|**bypass**|The bypass state to be set.|boolean|

## Example

```lua
-- Bypass the specified quick control assignment.

layer = this.parent
qc = 1
assignment = 1
    
layer:setQCAssignmentBypass(qc, assignment, true)
```

**See also:** [setQCAssignmentParamId](./setQCAssignmentParamId.md), [setQCAssignmentScope](./setQCAssignmentScope.md), [setQCAssignmentMin](./setQCAssignmentMin.md), [setQCAssignmentMax](./setQCAssignmentMax.md), [setQCAssignmentCurve](./setQCAssignmentCurve.md), [setQCAssignmentMode](./setQCAssignmentMode.md), [addQCAssignment](./addQCAssignment.md), [removeQCAssignment](./removeQCAssignment.md), [getNumQCAssignments](./getNumQCAssignments.md), [getQCAssignmentParamId](./getQCAssignmentParamId.md), [getQCAssignmentScope](./getQCAssignmentScope.md), [getQCAssignmentMin](./getQCAssignmentMin.md), [getQCAssignmentMax](./getQCAssignmentMax.md), [getQCAssignmentCurve](./getQCAssignmentCurve.md), [getQCAssignmentMode](./getQCAssignmentMode.md), [getQCAssignmentBypass](./getQCAssignmentBypass.md), [Quick Control Assignment Modes](./Quick-Control-Assignment-Modes.md)