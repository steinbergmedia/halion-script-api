/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# loadPreset

>**loadPreset(path)**

#### Description

Function to load the elements of a VST preset. Depending on whether you load a layer, program or multi-program VST preset, the function returns either an [Element](./Element.md) object of the type [Layer](./Layer.md), [Program](./Program.md) or [Instance](./Instance.md). You can use the returned [Element](./Element.md) object to insert layers, zones, MIDI modules, busses, effects, etc. from the VST preset into the program or HALion instance where the script is executed.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**path**|The path and file name of the VST preset.|string|

#### Return Values

Returns an [Element](./Element.md) object of the type [Layer](./Layer.md), [Program](./Program.md) or [Instance](./Instance.md), depending on whether a layer, program or multi-program VST preset was loaded.

#### Example

To explore the following script:

1. Download [Layer.vstpreset](../vstpresets/Layer.vstpreset).
1. Drag the preset on the MediaBay to import it to the user folder for VST presets.
1. Create an empty program and add a script module.
1. Paste the script into the text editor of the script module and execute the script.

```lua
-- Insert Layer.vstpreset as sublayer into the current program.
 
-- Get the file path for user VST presets.
path = getUserPresetPath()
 
-- Load the VST preset
layer = loadPreset(path.."/Layer/Layer.vstpreset")
 
program = this.program
 
-- Insert the previously loaded VST preset as sublayer.
if layer then
    program:insertLayer(layer, 1)
end
```

**See also:** [loadPresetAsync](./loadPresetAsync.md)