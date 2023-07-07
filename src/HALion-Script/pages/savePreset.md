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
|**plugin**|Determines the plug-in for the VST preset. You can choose ``H7`` (HALion 7) or ``HS`` (HALion Sonic). |string, optional|
|**attr**|Set this to ``program`` to save a program VST preset. A layer VST preset will be saved, if this is not set. Alternatively, you can provide a table with MediaBay attributes and values.|string, optional|

## MediaBay Attributes

|Attribute|Value|Value Type|
|:-|:-|:-|
|MediaAuthor|"Author"|string|
|MediaComment|"Comment"|string|
|MediaLibraryManufacturerName|"ManufacturerName"|string|
|MediaLibraryName|"LibraryName"|string|
|MediaRating|3|integer|
|MusicalArticulations|"Articulation1\|Articulation2\|..."|string|
|MusicalCategory|"Category"|string|
|MusicalInstrument|"Category\|Subcategory"|string|
|MusicalMoods|"Mood1\|Mood2\|..."|string|
|MusicalProperties|"Property1\|Property2\|..."|string|
|MusicalStyle|"Style"|string|
|MusicalSubStyle|"Style\|Substyle"|string|
|VST3UnitTypePath|"program" or "program/layer"|string|

>&#10069; See [MediaBay Guideline](../../HALion-Tutorials-Guidelines/pages/MediaBay-Guideline.md) for more information about the attributes and how to use them.

## Example

```lua
posStart, posEnd = string.find(getUserSubPresetPath(), "Steinberg/")
fileLocation = string.sub(getUserSubPresetPath(), 1, posEnd)

defineParameter("FileName", nil, "test.vstpreset")
defineParameter("SavePreset", nil, false, function() if SavePreset then onSavePresetChanged() end end)

setScriptExecTimeOut(20000)

attr = {MediaRating = 3, MusicalProperties = "Soft|Bright|Rich", VST3UnitTypePath = "program",}

function onSavePresetChanged()
	FileName = fileLocation..FileName
	local layer = this.parent:getLayer()
	local saved = savePreset(FileName, layer, "HS", attr)
	print(saved)
	SavePreset = false
end
```
