```lua
-- Start with an empty program, remove any existing layers.
layers = this.parent:findLayers()
 
if layers then
   for i, layer in ipairs(layers) do
       this.parent:removeLayer(layer)
   end
end
 
-- Table with layer presets from Skylab.
layerPresets = {
   { name = "Ambient Pad 01", path = "vstsound://724ACB205EFF46F885735D1B216C37AD/.AppData/Steinberg/Skylab/Sub Presets/Layer Presets/Ambient Pads/Ambient Pad 01.vstpreset" },
   { name = "Ambient Pad 02", path = "vstsound://724ACB205EFF46F885735D1B216C37AD/.AppData/Steinberg/Skylab/Sub Presets/Layer Presets/Ambient Pads/Ambient Pad 02.vstpreset" },
   { name = "Ambient Pad 03", path = "vstsound://724ACB205EFF46F885735D1B216C37AD/.AppData/Steinberg/Skylab/Sub Presets/Layer Presets/Ambient Pads/Ambient Pad 03.vstpreset" },
   { name = "Ambient Pad 04", path = "vstsound://724ACB205EFF46F885735D1B216C37AD/.AppData/Steinberg/Skylab/Sub Presets/Layer Presets/Ambient Pads/Ambient Pad 04.vstpreset" },
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
 
-- Append the preset in a separate thread.
function appendNewLayer(progressInfo)
   if progressInfo.root then
       this.parent:appendLayerAsync(progressInfo.root, removeOldLayer)
       print("Appending "..progressInfo.root.name.."...")
   end
end
 
-- Load the preset in a separate thread.
function onSelectPresetChanged()
   progress = 0
   progressInf = loadPresetAsync(layerPresets[SelectPreset].path, appendNewLayer)
   print("Loading "..layerPresets[SelectPreset].name.."...")
end
 
-- Define a parameter for selecting the preset to be loaded.
defineParameter("SelectPreset", "Select Preset", 1, presetNames, onSelectPresetChanged)
 
-- Monitor the load progress with onIdle.
progress = 1
function onIdle()
   if progress < 1 then
       progress = progressInf.progress
       print("Progress: "..(progressInf.progress * 100).."%")
   end
end
```