/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# findSlots

>**findSlots(nameOrFilterFunction)**

## Description

Function to find the slots of the plug-in instance. Before calling this function you must access the Instance object with ``this.program.instance``. The function returns an array with the [Slot](./Slot.md) objects of the found slots. Particular slots can be searched by name or through a filter function. If searching by name, findSlots accepts only the [Slot](./Slot.md) objects that match the specified name. The filter function uses the [Slot](./Slot.md) object of each slot as argument. Only those [Slot](./Slot.md) objects that return ``true`` for the search criteria defined in the filter function will be accepted by findSlots. Without a name or filter function the [Slot](./Slot.md) objects of all slots in the instance will be returned.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrFilterFunction**|The name of the slots searched for or a filter function. Only the [Slot](./Slot.md) objects that match the name or return ``true`` for the search criteria of the filter function will be accepted. Set this to ``nil`` to deactivate any name filter or search criteria.|string or function, optional|

## Return Values

Returns an array with the [Slot](./Slot.md) objects of the found slots. Returns an empty table if no slots are found.


## Example

```lua
-- Print the names of all slots.

slots = this.program.instance:findSlots()
  
for i, slot in ipairs(slots) do
        print(slot.name)
end
```

**See also:** [findBusses](./findBusses.md), [findChildren](./findChildren.md), [findEffects](./findEffects.md), [findLayers](./findLayers.md), [findMidiModules](./findMidiModules.md), [findZones](./findZones.md), [Slot](./Slot.md)