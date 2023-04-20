/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Quick Control Assignment Modes

#### Description

Enumerator to identify the different quick control assignment modes.

**Available in:** Controller.

#### Quick Control Assignment Modes

|Index|Name|
|:-|:-|
|1|QCAssignmentMode.absolute|
|2|QCAssignmentMode.relative|
|3|QCAssignmentMode.switch|
|4|QCAssignmentMode.switchRelative|

#### Example

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

**See also:** [addQCAssignment](./addQCAssignment.md), [removeQCAssignment](./removeQCAssignment.md), [getNumQCAssignments](./getNumQCAssignments.md), [getQCAssignmentParamId](./getQCAssignmentParamId.md), [getQCAssignmentScope](./getQCAssignmentScope.md), [getQCAssignmentMin](./getQCAssignmentMin.md), [getQCAssignmentMax](./getQCAssignmentMax.md), [getQCAssignmentCurve](./getQCAssignmentCurve.md), [getQCAssignmentMode](./getQCAssignmentMode.md), [getQCAssignmentBypass](./getQCAssignmentBypass.md), [setQCAssignmentParamId](./setQCAssignmentParamId.md), [setQCAssignmentScope](./setQCAssignmentScope.md), [setQCAssignmentMin](./setQCAssignmentMin.md), [setQCAssignmentMax](./setQCAssignmentMax.md), [setQCAssignmentCurve](./setQCAssignmentCurve.md), [setQCAssignmentMode](./setQCAssignmentMode.md), [setQCAssignmentBypass](./setQCAssignmentBypass.md)