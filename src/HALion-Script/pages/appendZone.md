/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# appendZone

>**appendZone(zone)**

## Description

Function to add a zone in the specified destination layer. The destination layer is determined by its [Layer](./Layer.md) object. For example, ``this.parent`` specifies the parent layer of the script module as destination layer. The zone to be added is determined by its [Zone](./Zone.md) object. You can use [getZone](./getZone.md) or [findZones](./findZones.md) to determine the zone. The new zone will be added behind the existing zones. To insert a zone at a specific position in the destination layer, use [insertZone](./insertZone.md) instead.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**zone**|The [Zone](./Zone.md) object of the zone that you want to append.|[Zone](./Zone.md)|

## Example

{{#include ./_appendInsertElement-Example.md}}

```lua
-- Append a zone from Program.vstpreset into the current program.
    
-- Get the file path for user VST presets.
path = getUserPresetPath()
    
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
    
-- Get the first zone from the loaded program.
zone = loadedProgram:getZone()
    
-- Append the zone.
if zone then
    this.program:appendZone(zone)
end
```

**See also:** [appendBus](./appendBus.md), [appendEffect](./appendEffect.md), [appendLayer](./appendLayer.md), [appendLayerAsync](./appendLayerAsync.md), [appendMidiModule](./appendMidiModule.md), [Zone](./Zone.md)