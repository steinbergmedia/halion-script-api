/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# findMidiModules

>**findMidiModules(recursive, nameOrFilterFunction)**

## Description

Function to find MIDI modules in the specified layer. For example, ``this.parent`` specifies the parent layer of the script module as the layer to be searched in. If recursive is set to ``true``, sublayers will also be searched. The function returns an array with the [MidiModule](./MidiModule.md) objects of the found MIDI modules. Particular MIDI modules can be searched by name or through a filter function. If searching by name, findMidiModules accepts only the [MidiModule](./MidiModule.md) objects that match the specified name. The filter function uses the [MidiModule](./MidiModule.md) object of each MIDI module as argument. Only those [MidiModule](./MidiModule.md) objects that return ``true`` for the search criteria defined in the filter function will be accepted by findMidiModules. Without a name or filter function the [MidiModule](./MidiModule.md) objects of all MIDI modules in the searched layers will be returned.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|recursive|If set to ``false``, only the current layer will be searched. If set to ``true``, sublayers will also be searched. The default is ``false``.|boolean|
|**nameOrFilterFunction**|The name of the MIDI modules searched for or a filter function. Only the [MidiModule](./MidiModule.md) objects that match the name or return ``true`` for the search criteria of the filter function will be accepted. Set this to ``nil`` to deactivate any name filter or search criteria.|string or function, optional|

## Return Values

Returns an array with the [MidiModule](./MidiModule.md) objects of the found MIDI modules. Returns an empty table if no MIDI modules are found.

## Example

```lua
-- Find all MIDI modules and print their names.

modules = this.program:findMidiModules(true)
 
if modules[1] then
    for i, module in ipairs(modules) do
        print(module.name)
    end
else
    print("Could not find any MIDI modules!")
end
```

**See also:** [findBusses](./findBusses.md), [findChildren](./findChildren.md), [findEffects](./findEffects.md), [findLayers](./findLayers.md), [findSlots](./findSlots.md), [findZones](./findZones.md), [MidiModule](./MidiModule.md)