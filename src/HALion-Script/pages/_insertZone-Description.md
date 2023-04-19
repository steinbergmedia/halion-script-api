>**insertZone(zone, position)**

#### Description

Function to insert a zone at the specified position in the determined layer. The zone to be inserted is determined by its [Zone](./Zone.md) object. You can use [getZone](./getZone.md) or [findZones](./findZones.md) to determine the desired zone. The destination layer is determined by its [Layer](./Layer.md) object. For example, ``this.parent`` determines the parent layer of the script module as destination layer. The position is the number indexing the existing zones in the destination layer. The new zone will be inserted before the specified position. To add the zone at the end, use [appendZone](./appendZone.md) instead.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**zone**|The [Zone](./Zone.md) object of the zone that you want to insert.|[Zone](./Zone.md)|
|**position**|The position where the zone is inserted.|number|

#### Example

{{#include ./_appendInsertElement-Example.md}}

```lua
-- Insert a zone from Program.vstpreset into the current program.
   
-- Get the file path for user VST presets.
path = getUserPresetPath()
   
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
   
-- Get the first zone from the loaded program.
zone = loadedProgram:getZone()
   
-- Insert the zone.
if zone then
    this.program:insertZone(zone, 1)
end
```

