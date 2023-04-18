/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# findLayers

>**findLayers(recursive, nameOrFilterFunction)**

## Description

Function to find layers in the specified layer. For example, ``this.parent`` specifies the parent layer of the script module as the layer to be searched in. If recursive is set to ``true``, sublayers will also be searched. The function returns an array with the [Layer](./Layer.md) objects of the found layers. Particular layers can be searched by name or through a filter function. If searching by name,[ findLayers](./findLayers.md) accepts only the [Layer](./Layer.md) objects that match the specified name. The filter function uses the [Layer](./Layer.md) object of each layer as argument. Only those [Layer](./Layer.md) objects that return ``true`` for the search criteria defined in the filter function will be accepted by [findLayers](./findLayers.md). Without a name or filter function the [Layer](./Layer.md) objects of all layers in the searched layers will be returned.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**recursive**|If set to ``false``, only the current layer will be searched. If set to ``true``, sublayers will also be searched. The default is ``false``.|boolean
|**nameOrFilterFunction**|The name of the layers searched for or a filter function. Only the [Layer](./Layer.md) objects that match the name or return ``true`` for the search criteria of the filter function will be accepted. Set this to ``nil`` to deactivate any name filter or search criteria.|string or function, optional|

## Return Values

Returns an array with the [Layer](./Layer.md) objects of the found layers. Returns an empty table if no layers are found.

## Example

```lua
-- Find all layers and print their names.

layers = this.program:findLayers(true)
 
if layers[1] then
    for i, layer in ipairs(layers) do
        print(layer.name)
    end
else
    print("Could not find any layers!")
end
```

**See also:** [findBusses](./findBusses.md), [findChildren](./findChildren.md), [findEffects](./findEffects.md), [findMidiModules](./findMidiModules.md), [findSlots](./findSlots.md), [findZones](./findZones.md), [Layer](./Layer.md)