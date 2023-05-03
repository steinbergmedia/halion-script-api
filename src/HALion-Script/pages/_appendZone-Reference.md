/* ANCHOR: all */

// ANCHOR: function
>**appendZone(zone)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to add a zone in the specified destination layer. The destination layer is determined by its [Layer](./Layer.md) object. For example, ``this.parent`` specifies the parent layer of the script module as destination layer. The zone to be added is determined by its [Zone](./Zone.md) object. You can use [getZone](./getZone.md) or [findZones](./findZones.md) to determine the zone. The new zone will be added behind the existing zones. To insert a zone at a specific position in the destination layer, use [insertZone](./insertZone.md) instead.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**zone**|The [Zone](./Zone.md) object of the zone that you want to append.|[Zone](./Zone.md)|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
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
// ANCHOR_END: example

/* ANCHOR_END: all */