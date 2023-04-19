>**getNumQCAssignments(qc)**

#### Description

Function to retrieve the number of assignments of a quick control on the specified layer. For example, ``this.parent`` defines the parent layer of the script module as the layer with the desired quick control. The ``qc`` argument is the index of the quick control with the requested assignments.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|

#### Return Values

Returns the number of assignments of the specified layer and quick control.

#### Example

```lua
-- Print the number of assignments of the first quick control on the parent layer.

layer = this.parent
qc = 1
 
print("Number of assignments on '"..layer.name.."', QC "..qc..": "..layer:getNumQCAssignments(qc)..".")
```

