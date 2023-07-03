/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# savePreset

>**savePreset(filename, layer, plugin, attr)**

## Description

 Function to save a layer as VST preset to disk.

 **Available in:** Controller.

 ## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**filename**|The absolute path and name of the VST preset.|string|
|**layer**|Specifies the [Layer](./Layer.md) element which is to be saved.|[Layer](./Layer.md)|
|**plugin**|Determines the plug-in for the VST preset. You can choose "HALion7" or "HALion Sonic". |string, optional|
|**attr**|Set this to "program" to save a program VST preset. A layer VST preset will be saved, if this is not set.|string, optional|

## Example

```lua
posStart, posEnd = string.find(getUserSubPresetPath(), "Steinberg/")
fileLocation = string.sub(getUserSubPresetPath(), 1, posEnd)

defineParameter("FileName", nil, "test.vstpreset")
defineParameter("SavePreset", nil, false, function() if SavePreset then savePreset() end end)

setScriptExecTimeOut(20000)

function savePreset()
	FileName = fileLocation..FileName
	local layer = this.parent:getLayer()
	local saved = savePreset(FileName, layer)
	print(saved)
	SavePreset = false
end
```
