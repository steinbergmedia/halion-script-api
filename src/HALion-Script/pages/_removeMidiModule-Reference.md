/* ANCHOR: all */

// ANCHOR: function
>**removeMidiModule(moduleOrPosition)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to remove a MIDI module from the specified layer. For example, ``this.parent`` specifies the parent layer of the script module as the layer that contains the MIDI module. The MIDI module to be removed is determined by its [MidiModule](./MidiModule.md) object or its position. You can use [getMidiModule](./getMidiModule.md) or [findMidiModules](./findMidiModules.md) to determine the [MidiModule](./MidiModule.md) object. The position is the number that indexes the MIDI modules in the specified layer.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**moduleOrPosition**|The [MidiModule](./MidiModule.md) object or the position of the MIDI module to be removed.|[MidiModule](./MidiModule.md) or number|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Remove all MIDI modules from the program except the script module.

modules = this.program:findMidiModules(true)

for i, module in ipairs(modules) do
    if module ~= this then -- Exclude script module.
        module.parent:removeMidiModule(module)
    end
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */