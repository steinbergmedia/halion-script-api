/* ANCHOR: all */

// ANCHOR: function
>**insertEffect(effect, position)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to insert an effect at a specific position in a destination bus. The effect to be inserted is determined by its [Effect](./Effect.md) object. You can use [getEffect](./getEffect.md) or [findEffects](./findEffects.md) to determine the effect. The destination bus is determined by its [Bus](./Bus.md) object. You can use [getBus](./getBus.md) or [findBusses](./findBusses.md) to determine the destination bus. The position is the number indexing the effects in the destination bus. The new effect will be inserted before the specified position. To add the effect at the end, use [appendEffect](./appendEffect.md) instead.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**effect**|The element object of the effect that you want to insert.|[Effect](./Effect.md)|
|**position**|The position where the effect is inserted.|number|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
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
 
-- Insert the effect.
if (effect and bus) then
   bus:insertEffect(effect, 1)
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */