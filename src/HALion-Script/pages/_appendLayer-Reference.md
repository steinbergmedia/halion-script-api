/* ANCHOR: all */

// ANCHOR: function
>**appendLayer(layer)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to add a layer in the specified destination layer. The layer to be added and the destination layer are both determined by their [Layer](./Layer.md) objects. You can use [getLayer](./getLayer.md) or [findLayers](./findLayers.md) to determine the layer to be added. For example, ``this.parent`` defines the parent layer of the script module as destination layer. The new layer will be added behind the existing layers. To insert a layer at a specific position in the destination layer, use [insertLayer](./insertLayer.md) or [insertLayerAsync](./insertLayerAsync.md) instead.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**layer**|The Layer object of the layer that you want to append.|[Layer](./Layer.md)|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
{{#include ./_appendInsertElement-Example.md}}

```lua
-- Append the layer from Program.vstpreset into the current program.
    
-- Get the file path for user VST presets.
path = getUserPresetPath()
    
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
    
-- Get the first layer from the loaded program.
layer = loadedProgram:getLayer ()
    
-- Append the layer.
if layer then
    this.program:appendLayer(layer)
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */