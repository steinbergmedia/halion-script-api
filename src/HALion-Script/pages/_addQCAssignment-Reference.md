/* ANCHOR: all */

// ANCHOR: function
>**addQCAssignment(qc, element, nameOrID, scope)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to add a quick control assignment to the specified layer and quick control. The layer is determined by the [Layer](./Layer.md) object, and the quick control by the index stated by the ``qc`` argument. The ``element`` argument specifies the module to be connected and accepts either an [Element](./Element.md) object or a module type string as returned by [getQCAssignmentModuleType](./getQCAssignmentModuleType.md). The ``nameOrID`` argument identifies the parameter to be connected. The scope determines the part of the program that will be affected by the quick control assignment. You specify the scope by setting the ``scope`` argument to the [Element](./Element.md) object that corresponds to the desired part of the program.

>&#10069; The index of the quick controls starts counting from 1. QC 1 to QC 8 have index 1 to 8. Sphere H, Sphere V and Mod Wheel have index 9, 10 and 11.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control to which the assignment will be added.|number|
|**element**|The [Element](./Element.md) object or module type string of the module to be connected. The module type string can be obtained with [getQCAssignmentModuleType](./getQCAssignmentModuleType.md). Passing a module type string requires HALion 7.5 or higher.|[Element](./Element.md) or string|
|**nameOrID**|The name or ID of the parameter.|string or number|
|**scope**|The [Element](./Element.md) object that will be affected by the quick control assignment.|[Element](./Element.md)|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Assign the octave parameter of the zone to the
-- first quick control of the script module's parent layer.

layer = this.parent
zones = layer:findZones(true)
 
layer:addQCAssignment(1, zones[1], "Pitch.Octave", layer)
```
// ANCHOR_END: example

/* ANCHOR_END: all */