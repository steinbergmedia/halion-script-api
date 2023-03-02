/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# appendBus

>**appendBus(bus)**

## Description

Function to add a bus in the specified destination layer. The destination layer is determined by its [Layer](./Layer.md) object. For example, ``this.parent`` specifies the parent layer of the script module as destination layer. The bus to be added is determined by its [Bus](./Bus.md) object. You can use [getBus](./getBus.md) or [findBusses](./findBusses.md) to determine the bus. The new bus will be added behind the existing busses. To insert a bus at a specific position in the destination layer, use [insertBus](./insertBus.md) instead.

{{#include ./_appendElement-Note.md}}

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**bus**|The [Bus](./Bus.md) object of the bus that you want to append.|[Bus](./Bus.md)|

## Example

{{#include ./_appendElement-Example.md}}

```lua
-- Append the bus from Program.vstpreset into the current program.
   
-- Get the file path for user VST presets.
path = getUserPresetPath()
   
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Append Example.vstpreset")
   
-- Get the first bus from the loaded program.
bus = loadedProgram:getBus()
   
-- Append the bus.
if bus then
    this.program:appendBus(bus)
end
```

**See also:** [appendEffect](./appendEffect.md), [appendLayer](./appendLayer.md), [appendLayerAsync](./appendLayerAsync.md), [appendMidiModule](./appendMidiModule.md), [appendZone](./appendZone.md), [Bus](./Bus.md)