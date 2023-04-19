>**getQCAssignmentMax(qc, assignment)**

#### Description

Function to retrieve the maximum value of the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment with the requested maximum value. The indices of the quick controls and the assignments both start counting from 1.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|

#### Return Values

Returns the maximum value of the specified quick control assignment. The value range is always 0 to 100 %, even if the mode of the quick control assignment is set to Relative or Switch Relative.

#### Example

```lua
-- Print the maximum value of the qc assignment as displayed in HALion.

layer = this.parent
qc = 1
assignment = 1
  
qcMode = layer:getQCAssignmentMode(qc, assignment)
qcMax = layer:getQCAssignmentMax(qc, assignment)
  
-- Convert to bipolar range if the qc is of the type relative or switch relative.

if (qcMode == QCAssignmentMode.relative or qcMode == QCAssignmentMode.switchRelative) then
    qcMax = qcMax * 2 - 100
end
   
print("Maximum value of '"..layer.name.."', QC "..qc..", assignment "..assignment..": "..qcMax..".")
```

