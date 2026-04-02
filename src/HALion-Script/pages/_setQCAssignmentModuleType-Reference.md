/* ANCHOR: all */

// ANCHOR: function
>**setQCAssignmentModuleType(qc, assignment, moduleType)**

{{#include ../../_Version.md:halion750}}
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to set the module type for the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment. The indices of the quick controls and the assignments both start counting from 1. The ``moduleType`` argument specifies the module type as a string, which allows assigning a module type even when no element of that type exists at the time of the assignment.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|
|**moduleType**|The module type to be set for the quick control assignment.|string|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
{{#include ./_getSetQCAssignmentModuleType-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */
