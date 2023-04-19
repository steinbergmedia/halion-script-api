>**addQCAssignment(qc, element, nameOrID, scope)**

#### Description

Function to add a quick control assignment to the specified layer and quick control. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control that you want to edit. The quick control assignment will be added to the quick control with the index stated by the ``qc`` argument. The arguments ``element`` and ``nameOrID`` specify the parameter to be connected. The scope determines the part of the program that will be affected by the quick control assignment. You specify the scope by setting the ``scope`` argument to the [Element](./Element.md) object that corresponds to the desired part of the program.

>The index of the quick controls starts counting from 1. QC 1 to QC 8 have index 1 to 8. Sphere H, Sphere V and Mod Wheel have index 9, 10 and 11.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control to which the assignment will be added.|number|
|**element**|The [Element](./Element.md) object of the parameter to be connected.|[Element](./Element.md)|
|**nameOrID**|The name or ID of the parameter.|string or number|
|**scope**|The [Element](./Element.md) object that will be affected by the quick control assignment.|[Element](./Element.md)|

#### Example

```lua
-- Assign the octave parameter of the zone to the first quick control of the script module's parent layer.
layer = this.parent
zones = layer:findZones(true)
 
layer:addQCAssignment(1, zones[1], "Pitch.Octave", layer)
```

