/* ANCHOR: all */

// ANCHOR: function
>**insertLayerAsync(layer, position, callback)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to insert a layer at a specified position in a destination layer using a separate, parallel thread. Inserting a layer in a separate thread can be necessary if the layer is too big to be inserted in a short time. The layer to be inserted and the destination layer are both determined by their [Layer](./Layer.md) objects. You can use [getLayer](./getLayer.md) or [findLayers](./findLayers.md) to determine the layer to be inserted. For example, ``this.parent`` determines the parent layer of the script module as destination layer. The position is the number indexing the existing layers in the destination layer. The new layer will be inserted before the specified position. To add the layer at the end, use [appendLayer](./appendLayer.md) or [appendLayerAsync](./appendLayerAsync.md) instead. The function returns a [LoadProgress](./LoadProgress.md) object that can be used to monitor the load progress. After the layer is inserted, the callback function is called. The callback function gets the [LoadProgress](./LoadProgress.md) object as default argument.

{{#include ./_appendInsertElement-Note.md}}

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**layer**|The [Layer](./Layer.md) object of the layer that you want to insert.|[Layer](./Layer.md)|
|**position**|The position where the layer is to be inserted.|number|
|**callback**|Callback function that is called when the layer is inserted. The callback function gets the [LoadProgress](./LoadProgress.md) object as argument.|function, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns a [LoadProgress](./LoadProgress.md) object.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Start with an empty program, remove all existing layers.
layers = this.parent:findLayers()
 
if layers then
  for i, layer in ipairs(layers) do
      this.parent:removeLayer(layer)
  end
end
 
-- Table with layer presets from Skylab.
layerPresets = {
  { name = "Ambient Pad 01", path = "vstsound://EB86867EFF8E44FEA8FE366F676E25BE/.AppData/Steinberg/Skylab/Sub Presets/Layer Presets/Ambient Pads/Ambient Pad 01.vstpreset" },
  { name = "Ambient Pad 02", path = "vstsound://EB86867EFF8E44FEA8FE366F676E25BE/.AppData/Steinberg/Skylab/Sub Presets/Layer Presets/Ambient Pads/Ambient Pad 02.vstpreset" },
  { name = "Ambient Pad 03", path = "vstsound://EB86867EFF8E44FEA8FE366F676E25BE/.AppData/Steinberg/Skylab/Sub Presets/Layer Presets/Ambient Pads/Ambient Pad 03.vstpreset" },
  { name = "Ambient Pad 04", path = "vstsound://EB86867EFF8E44FEA8FE366F676E25BE/.AppData/Steinberg/Skylab/Sub Presets/Layer Presets/Ambient Pads/Ambient Pad 04.vstpreset" },
}
 
-- Create a table with the preset names.
function getPresetNames()
  presetNames = {}
  for i, preset in ipairs(layerPresets) do
    presetNames[i] = preset.name
  end
end
 
getPresetNames()
 
-- Remove the old layer after the new one was added.
function removeOldLayer(progressInfo)
  local newPreset = progressInfo.root
  if oldPreset then
    this.parent:removeLayer(oldPreset)
    print(oldPreset.name.." removed.")
  end
  oldPreset = newPreset
end
 
-- Insert the preset in a separate thread.
function insertNewLayer(progressInfo)
  if progressInfo.root then
    this.parent:insertLayerAsync(progressInfo.root, 1, removeOldLayer)
    print("Inserting "..progressInfo.root.name.."...")
  end
end
 
-- Load the preset in a separate thread.
function onSelectPresetChanged(layerPreset)
  loadPresetAsync(layerPreset.path, insertNewLayer)
  print("Loading "..layerPreset.name.."...")
end
 
-- Define a parameter for selecting the preset to be loaded.
defineParameter("SelectPreset",  "Select Preset",  1, presetNames, function() onSelectPresetChanged(layerPresets[SelectPreset]) end)
```
// ANCHOR_END: example

/* ANCHOR_END: all */