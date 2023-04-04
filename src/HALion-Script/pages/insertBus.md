/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# insertBus

>**insertBus(bus, position)**

## Description

Function to insert a bus at the specified position in the destination layer. The bus to be inserted is determined by its [Bus](./Bus.md) object. You can use [getBus](./getBus.md) or [findBusses](./findBusses.md) to determine the bus. The destination layer is determined by its [Layer](./Layer.md) object. For example, ``this.parent`` sets the parent layer of the script module as destination layer. The position is the number indexing the existing busses in the destination layer. The new bus will be inserted before the specified position. To add the bus at the end, use [appendBus](./appendBus.md) instead.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**bus**|The [Bus](./Bus.md) object of the bus that you want to insert.|[Bus](./Bus.md)|
|**position**|The position where the bus is inserted.|number|

## Example

{{#include ./_appendInsertElement-Example.md}}

```lua
-- Insert the bus from Program.vstpreset into the current program.
  
-- Get the file path for user VST presets.
path = getUserPresetPath()
  
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
  
-- Get the first bus from the loaded program.
bus = loadedProgram:getBus()
  
-- Insert the bus.
if bus then
    this.program:insertBus(bus, 1)
end
```

**See also:** [insertEffect](./insertEffect.md), [insertLayer](./insertLayer.md), [insertLayerAsync](./insertLayerAsync.md), [insertMidiModule](./insertMidiModule.md), [insertZone](./insertZone.md), [Bus](./Bus.md)