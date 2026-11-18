/* ANCHOR: all */

// ANCHOR: function
>**getQCAssignmentModuleType(qc, assignment)**

{{#include ../../_Version.md:halion750}}
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the module type of the module that is connected to the specified quick control assignment. The quick control assignment is determined by the [Layer](./Layer.md) object, the index of the quick control and the index of the assignment itself. The ``qc`` argument is the index of the quick control and the ``assignment`` argument is the index of the assignment with the requested module type. The indices of the quick controls and the assignments both start counting from 1.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**qc**|The index of the quick control.|number|
|**assignment**|The index of the quick control assignment.|number|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the module type of the module connected to the specified quick control assignment as a string.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
{{#include ./_getSetQCAssignmentModuleType-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */
