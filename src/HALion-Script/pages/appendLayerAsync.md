/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# appendLayerAsync

>**appendLayerAsync(layer, callback)**

## Description

Function to add a layer in the specified destination layer using a separate, parallel thread. Appending a layer in a separate thread can be necessary if the layer is too big to be added in a short time. The layer to be inserted and the destination layer are both determined by their [Layer](./Layer.md) objects. You can use [getLayer](./getLayer.md) or [findLayers](./findLayers.md) to determine the layer to be inserted. For example, ``this.parent`` determines the parent layer of the script module as destination layer. The new layer will be added behind the existing layers. To insert a layer at a specific position in the destination layer, use [insertLayer](./insertLayer.md) or [insertLayerAsync](./insertLayerAsync.md) instead. The function returns a [LoadProgress](./LoadProgress.md) object that can be used to monitor the load progress. After the layer is added, the callback function is called. The callback function gets the [LoadProgress](./LoadProgress.md) object as default argument.

{{#include ./_appendElement-Note.md}}

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**layer**|The Layer object of the layer that you want to append.|[Layer](./Layer.md)|
|**callback**|Callback function that is called when the layer is added. The callback function gets the [LoadProgress](./LoadProgress.md) object as argument.|function, optional|

## Return Values

Returns a [LoadProgress](./LoadProgress.md) object.

## Example

{{#include ./_loadPresetAsync-Example.md}}

**See also:** [appendBus](./appendBus.md), [appendEffect](./appendEffect.md), [appendLayer](./appendLayer.md), [appendMidiModule](./appendMidiModule.md), [appendZone](./appendZone.md), [LoadProgress](./LoadProgress.md)