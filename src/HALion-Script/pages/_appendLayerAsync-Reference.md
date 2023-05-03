/* ANCHOR: all */

// ANCHOR: function
>**appendLayerAsync(layer, callback)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to add a layer in the specified destination layer using a separate, parallel thread. Appending a layer in a separate thread can be necessary if the layer is too big to be added in a short time. The layer to be inserted and the destination layer are both determined by their [Layer](./Layer.md) objects. You can use [getLayer](./getLayer.md) or [findLayers](./findLayers.md) to determine the layer to be inserted. For example, ``this.parent`` determines the parent layer of the script module as destination layer. The new layer will be added behind the existing layers. To insert a layer at a specific position in the destination layer, use [insertLayer](./insertLayer.md) or [insertLayerAsync](./insertLayerAsync.md) instead. The function returns a [LoadProgress](./LoadProgress.md) object that can be used to monitor the load progress. After the layer is added, the callback function is called. The callback function gets the [LoadProgress](./LoadProgress.md) object as default argument.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**layer**|The Layer object of the layer that you want to append.|[Layer](./Layer.md)|
|**callback**|Callback function that is called when the layer is added. The callback function gets the [LoadProgress](./LoadProgress.md) object as argument.|function, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns a [LoadProgress](./LoadProgress.md) object.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
{{#include ./_loadPresetAsync-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */