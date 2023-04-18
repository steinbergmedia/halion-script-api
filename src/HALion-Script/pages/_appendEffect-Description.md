>**appendEffect(effect)**

#### Description

Function to add an effect to the specified destination bus. The destination bus is determined by its [Bus](./Bus.md) object. You can use [getBus](./getBus.md) or [findBusses](./findBusses.md) to determine the destination bus. The effect to be added is determined by its [Effect](./Effect.md) object. You can use [getEffect](./getEffect.md) or [findEffects](./findEffects.md) to determine the effect. The new effect will be added behind the existing effects. To insert an effect at a specific position in the bus, use [insertEffect](./insertEffect.md) instead.

{{#include ./_appendInsertElement-Note.md}}
**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|-|:-|
|**effect**|The [Effect](./Effect.md) object of the insert effect that you want to append.|[Effect](./Effect.md)|

#### Example

{{#include ./_appendInsertElement-Example.md}}

```lua
-- Insert an effect from Program.vstpreset into the current program.
  
-- Get the file path for user VST presets.
path = getUserPresetPath()
  
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
  
-- Get the first effect from the loaded program.
effect = loadedProgram:getBus():getEffect()
  
-- Get the first bus of this program.
bus = this.program:getBus()
  
-- Append the effect.
if (insert and bus) then
    bus:appendEffect(effect)
end
```
