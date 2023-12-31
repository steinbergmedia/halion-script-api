/* ANCHOR: all */

// ANCHOR: function
>**setQCAssignmentScope(qc, assignment, scope)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to set the scope for the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. For example, ``this.parent`` defines the parent layer of the script module as the layer that contains the quick control. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The scope is defined by the [Element](./Element.md) object that you assign to the ``scope`` argument.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignments**|The index of the quick control assignment.|number|
|**scope**|The [Element](./Element.md) object to be used as scope.|[Element](./Element.md)|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Set the scope to the first zone that was found.

layer = this.parent
zones = layer:findZones(true)
zone = zones[1]
qc = 1
assignment = 1
   
layer:setQCAssignmentScope(qc, assignment, zone)
```
// ANCHOR_END: example

/* ANCHOR_END: all */