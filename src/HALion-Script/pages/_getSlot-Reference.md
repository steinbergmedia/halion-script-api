/* ANCHOR: all */

// ANCHOR: function
>**getSlot(nameOrIndex)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the [Slot](./Slot.md) object of a slot of the plug-in instance. Before calling this function you must access the [Instance](./Instance.md) object with ``this.program.instance``. A particular slot can be searched by name or index. The index equals the slot numbering in the **Slot Rack**. If no argument is set, the function returns the first slot it finds.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrIndex**|The name or index of the slot. Set this to nil to deactivate the search filter.|string or number, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the [Slot](./Slot.md) object of the found slot. Returns ``nil`` if no slot is found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print the name of slot index 3.

slot = this.program.instance:getSlot(3)

print(slot.name)
```
// ANCHOR_END: example

/* ANCHOR_END: all */