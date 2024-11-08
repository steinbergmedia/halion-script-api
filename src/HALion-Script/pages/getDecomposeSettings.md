/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getDecomposeSettings

>**getDecomposeSettings()**

{{#include ../../_Version.md:halion700}}

## Description

Function to obtain the decompose settings of the plug-in. Custom samples originate from disk and library samples originate from VST Sound containers. Depending on the decompose settings specified by the user and on the origin of the samples, decomposed samples are written to different file paths. By evaluating the returned settings, your script can respond to the settings specified by the user.

**Available in:** Controller.

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.OriginalFolder**|If this is set to ``true``, the decomposed samples from disk will be saved in the same folder as the original sample. This setting affects only samples that are not part of a VST Sound container.|boolean|
|**.ProjectFolder**|The file path to the project folder of your Steinberg DAW. The decomposed samples from disk or from VST Sound containers will be saved to this project folder if the FileProjectFolderCustom and the FileProjectFolderLibrary settings are set to ``true``.|string|
|**.FileFolderNameCustom**|The file path to the folder in which the decomposed samples from disk will be saved. This setting applies only if FileProjectFolderCustom is set to ``false``.|string|
|**.FileProjectFolderCustom**|If this is set to ``true``, the decomposed samples from disk will be saved in the project folder of your Steinberg DAW. If this is set to ``false``, the file path of FileFolderNameCustom will be used instead.|boolean|
|**.FileProjectSubFolderCustom**|This setting applies only if FileProjectFolderCustom is set to ``true``.The decomposed samples from disk will be saved in the specified subfolder in the project folder of your Steinberg DAW. If this is empty, the decomposed samples will be saved directly to the project folder.|string|
|**.FileFolderNameLibrary**|The file path to the folder in which the decomposed samples from VST Sound containers will be saved. This setting applies only if FileProjectFolderLibrary is set to ``false``.|string|
|**.FileProjectFolderLibrary**|If this is set to ``true``, the decomposed samples from VST Sound containers will be saved in the project folder of your Steinberg DAW. If this is set to ``false``, the file path of FileFolderNameLibrary will be used instead.|boolean|
|**.FileProjectSubFolderLibrary**|This setting applies only if FileProjectFolderLibrary is set to ``true``.The decomposed samples from VST Sound containers will be saved in the specified subfolder in the project folder of your Steinberg DAW. If this is empty, the decomposed samples will be saved directly to the project folder.|string|
|**.SubFolder**|If this is set to ``true``, the decomposed samples will be saved to Tonal and Noise subfolders.|boolean|

## Return Values

Returns a table that lists the decompose settings.

```lua
settings = getDecomposeSettings()
for setting, value in pairs(settings) do
    print(setting, value)
end
```

**See also:** [decompose](./decompose.md), [cancelDecompose](./cancelDecompose.md), [getDecomposeProgress](./getDecomposeProgress.md), [Decompose Output Modes](./Decompose-Output-Modes.md), [getDecomposeOutputPath](./getDecomposeOutputPath.md)