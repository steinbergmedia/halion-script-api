/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# savePreset

>**savePreset(filename, layer, plugin, attr)**

{{#include ../../_Version.md:halion700}}

## Description

Saves the specified [Layer](./Layer.md) element as a VST preset to disk. The preset format is determined by the ``plugin`` argument, which also defines which Steinberg instrument can load the resulting .vstpreset file. If MediaBay attributes are provided through ``attr``, they are written into the preset.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**filename**|The absolute path and name of the file location where the VST preset is saved.|string|
|**layer**|Specifies the [Layer](./Layer.md) element to be saved as VST preset.|[Layer](./Layer.md)|
|**plugin**|Specifies the target plug‑in format for the VST preset. Valid values are ``"H7"`` (HALion 7) and ``"HS"`` (HALion Sonic). Only the selected plug‑in can load the saved VST preset.|string, optional|
|**attr**|If set to ``program`` the VST preset is saved as a *program* preset. Otherwise, the argument may contain a table of MediaBay attributes and values that will be written to the VST preset. If omitted, a *layer* VST preset is saved.|string, optional|

## MediaBay Attributes

MediaBay attributes are stored in VST presets and allow for browsing them in MediaBay. You can set the following attributes with this function or with [setMediaBayAttributes](./setMediaBayAttributes.md).

{{#include ./_MediaBay_Attributes.md:savePreset_attributes}}

{{#include ./_MediaBay_Attributes.md:savePreset_arguments}}

>&#10069; See [MediaBay Guideline](../../HALion-Tutorials-Guidelines/pages/MediaBay-Guideline.md) for more information about the attributes and how to use them.

## Example

```lua
posStart, posEnd = string.find(getUserSubPresetPath(), "Steinberg/")
fileLocation = string.sub(getUserSubPresetPath(), 1, posEnd)

defineParameter("FileName", nil, "test.vstpreset")
defineParameter("SavePreset", nil, false, function() if SavePreset then onSavePresetChanged() end end)

setScriptExecTimeOut(20000)

attr = {MediaRating = "3", MusicalProperties = "Soft|Bright|Rich", VST3UnitTypePath = "program",}

function onSavePresetChanged()
	FileName = fileLocation..FileName
	local layer = this.parent:getLayer()
	local saved = savePreset(FileName, layer, "HS", attr)
	print(saved)
	SavePreset = false
end
```

**See also:** [getMediaBayAttributes](./getMediaBayAttributes.md), [setMediaBayAttributes](./setMediaBayAttributes.md)
