/* ANCHOR: all */

// ANCHOR: function
>**findSlots(nameOrFilterFunction)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to find the slots of the plug-in instance. Before calling this function you must access the Instance object with ``this.program.instance``. The function returns an array with the [Slot](./Slot.md) objects of the found slots. Particular slots can be searched by name or through a filter function. If searching by name, findSlots accepts only the [Slot](./Slot.md) objects that match the specified name. The filter function uses the [Slot](./Slot.md) object of each slot as argument. Only those [Slot](./Slot.md) objects that return ``true`` for the search criteria defined in the filter function will be accepted by findSlots. Without a name or filter function the [Slot](./Slot.md) objects of all slots in the instance will be returned.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrFilterFunction**|The name of the slots searched for or a filter function. Only the [Slot](./Slot.md) objects that match the name or return ``true`` for the search criteria of the filter function will be accepted. Set this to ``nil`` to deactivate any name filter or search criteria.|string or function, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns an array with the [Slot](./Slot.md) objects of the found slots. Returns an empty table if no slots are found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print the names of all slots.

slots = this.program.instance:findSlots()
  
for i, slot in ipairs(slots) do
        print(slot.name)
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */