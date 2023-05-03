/* ANCHOR: all */

// ANCHOR: function
>**insertLayer(layer, position)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to insert a layer at a specific position in a destination layer. The layer to be inserted and the destination layer are both determined by their [Layer](./Layer.md) objects. You can use [getLayer](./getLayer.md) or [findLayers](./findLayers.md) to determine the layer to be inserted. For example, ``this.parent`` determines the parent layer of the script module as destination layer. The position is the number indexing the existing layers in the destination layer. The new layer will be inserted before the specified position. To add the layer at the end, use [appendLayer](./appendLayer.md) or [appendLayerAsync](./appendLayerAsync.md) instead.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**layer**|The Layer object of the layer that you want to insert.|Layer|
|**position**|The position where the layer is to be inserted.|number|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
{{#include ./_appendInsertElement-Example.md}}

```lua
-- Insert a layer from Program.vstpreset into the current program.
   
-- Get the file path for user VST presets.
path = getUserPresetPath()
   
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
   
-- Get the first layer from the loaded program.
layer = loadedProgram:getLayer ()
   
-- Insert the layer.
if layer then
    this.program:insertLayer(layer, 1)
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */