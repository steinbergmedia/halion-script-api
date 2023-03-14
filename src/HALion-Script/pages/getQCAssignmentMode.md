/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getQCAssignmentMode

>**getQCAssignmentMode(qc, assignment)**

## Description

Function to retrieve the mode that is set for the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment with the requested mode. The indices of the quick controls and the assignments both start counting from 1.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|

## Return Values

Returns the mode that is set for the specified quick control assignment as a number. The mode can be determined via names or indices. See [Quick Control Assignment Modes](./Quick-Control-Assignment-Modes.md) for details.

## Example

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

**See also:** [addQCAssignment](./addQCAssignment.md), [removeQCAssignment](./removeQCAssignment.md), [getNumQCAssignments](./getNumQCAssignments.md), [getQCAssignmentParamId](./getQCAssignmentParamId.md), [getQCAssignmentScope](./getQCAssignmentScope.md), [getQCAssignmentMin](./getQCAssignmentMin.md), [getQCAssignmentMax](./getQCAssignmentMax.md), [getQCAssignmentCurve](./getQCAssignmentCurve.md), [getQCAssignmentBypass](./getQCAssignmentBypass.md), [setQCAssignmentParamId](./setQCAssignmentParamId.md), [setQCAssignmentScope](./setQCAssignmentScope.md), [setQCAssignmentMin](./setQCAssignmentMin.md), [setQCAssignmentMax](./setQCAssignmentMax.md), [setQCAssignmentCurve](./setQCAssignmentCurve.md), [setQCAssignmentMode](./setQCAssignmentMode.md), [setQCAssignmentBypass](./setQCAssignmentBypass.md), [Quick Control Assignment Modes](./Quick-Control-Assignment-Modes.md)