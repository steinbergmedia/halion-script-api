/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# setQCAssignmentScope

>**setQCAssignmentScope(qc, assignment, scope)**

## Description

Function to set the scope for the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The scope is defined by the [Element](./Element.md) object that you assign to the ``scope`` argument.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|


## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignments**|The index of the quick control assignment.|number|
|**scope**|The [Element](./Element.md) object to be used as scope.|[Element](./Element.md)|

## Example

```lua
-- Set the scope to the first zone that was found.

layer = this.parent
zones = layer:findZones(true)
zone = zones[1]
qc = 1
assignment = 1
   
layer:setQCAssignmentScope(qc, assignment, zone)
```

**See also:** [setQCAssignmentParamId](./setQCAssignmentParamId.md), [setQCAssignmentMin](./setQCAssignmentMin.md), [setQCAssignmentMax](./setQCAssignmentMax.md), [setQCAssignmentCurve](./setQCAssignmentCurve.md), [setQCAssignmentMode](./setQCAssignmentMode.md), [setQCAssignmentBypass](./setQCAssignmentBypass.md), [addQCAssignment](./addQCAssignment.md), [removeQCAssignment](./removeQCAssignment.md), [getNumQCAssignments](./getNumQCAssignments.md), [getQCAssignmentParamId](./getQCAssignmentParamId.md), [getQCAssignmentScope](./getQCAssignmentScope.md), [getQCAssignmentMin](./getQCAssignmentMin.md), [getQCAssignmentMax](./getQCAssignmentMax.md), [getQCAssignmentCurve](./getQCAssignmentCurve.md), [getQCAssignmentMode](./getQCAssignmentMode.md), [getQCAssignmentBypass](./getQCAssignmentBypass.md), [Quick Control Assignment Modes](./Quick-Control-Assignment-Modes.md)