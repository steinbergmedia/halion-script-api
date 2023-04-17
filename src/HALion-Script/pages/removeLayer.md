/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# removeLayer

>**removeLayer(layerOrPosition)**

## Description

Function to remove a layer from the specified layer. For example, ``this.parent`` specifies the parent layer of the script module as the layer that contains the layer to be removed. The layer is determined by its [Layer](./Layer.md) object or its position. You can use [getLayer](./getLayer.md) or [findLayers](./findLayers.md) to determine the [Layer](./Layer.md) object. The position is the number indexing the layers within the specified layer.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**layerOrPosition**|The [Layer](./Layer.md) object or the position of the layer to be removed.|[Layer](./Layer.md) or number|

## Example

```lua
-- Remove all layers from the program.

layers = this.program:findLayers(true)

for i, layer in ipairs(layers) do
    layer.parent:removeLayer(layer)
end
```

**See also:** [removeBus](./removeBus.md), [removeEffect](./removeEffect.md), [removeMidiModule](./removeMidiModule.md), [removeZone](./removeZone.md), [Layer](./Layer.md)