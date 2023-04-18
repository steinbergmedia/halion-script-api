/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# insertMidiModule

>**insertMidiModule(module, position)**

## Description

Function to insert a MIDI module at the specified position in the determined destination layer. The MIDI module to be inserted is determined by its [MidiModule](./MidiModule.md) object. You can use [getMidiModule](./getMidiModule.md) or [findMidiModules](./findMidiModules.md) to determine the desired MIDI module. The destination layer is determined by its [Layer](./Layer.md) object. For example, ``this.parent`` determines the parent layer of the script module as destination layer. The position is the number indexing the existing MIDI modules in the destination layer. The new MIDI module will be inserted before the specified position. To add the MIDI module at the end, use [appendMidiModule](./appendMidiModule.md) instead.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**module**|The [MidiModule](./MidiModule.md) object of the MIDI module that you want to insert.|[MidiModule](./MidiModule.md)|
|**position**|The position where the MIDI module is inserted.|number|

## Example

{{#include ./_appendInsertElement-Example.md}}

```lua
-- Insert a MIDI module from Program.vstpreset into the current program.
   
-- Get the file path for user VST presets.
path = getUserPresetPath()
   
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
   
-- Get the first MIDI module from the loaded program.
module = loadedProgram:getMidiModule()
   
-- Insert the MIDI module.
if module then
    this.program:insertMidiModule(module, 1)
end
```

**See also:** [insertBus](./insertBus.md), [insertEffect](./insertEffect.md), [insertLayer](./insertLayer.md), [insertLayerAsync](./insertLayerAsync.md), [insertZone](./insertZone.md), [MidiModule](./MidiModule.md)