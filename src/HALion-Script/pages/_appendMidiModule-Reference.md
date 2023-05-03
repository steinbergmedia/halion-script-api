/* ANCHOR: all */

// ANCHOR: function
>**appendMidiModule(module)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to add a MIDI module in the specified destination layer. The destination layer is determined by its [Layer](./Layer.md) object. For example, ``this.parent`` specifies the parent layer of the script module as destination layer. The MIDI module to be added is determined by its [MidiModule](./MidiModule.md) object. You can use [getMidiModule](./getMidiModule.md) or [findMidiModules](./findMidiModules.md) to determine the desired MIDI module. The new MIDI module will be added behind the existing MIDI modules. To insert a MIDI module at a specific position in the destination layer, use [insertMidiModule](./insertMidiModule.md) instead.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**module**|The [MidiModule](./MidiModule.md) object of the MIDI module that you want to append.|[MidiModule](./MidiModule.md)|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
{{#include ./_appendInsertElement-Example.md}}

```lua
-- Append a MIDI module from Program.vstpreset into the current program.
    
-- Get the file path for user VST presets.
path = getUserPresetPath()
    
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
    
-- Get the first MIDI module from the loaded program.
module = loadedProgram:getMidiModule()
    
-- Append the MIDI module.
if module then
    this.program:appendMidiModule(module)
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */