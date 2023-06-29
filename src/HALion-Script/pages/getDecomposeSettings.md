/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getDecomposeSettings

>**getDecomposeSettings()**

## Description

Function to obtain the decompose settings of the plug-in. Custom samples originate from disk and library samples originate from VST Sound containers. Depending on the decompose settings the user chose and the origin of the samples, the decomposed samples will be written to different file paths. By evaluating the returned settings your script can respond to the settings the user chose.

**Available in:** Controller.

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.OriginalFolder**|If this is set to true, the decomposed samples from disk will be saved in the same folder as the original sample. This setting applies only for samples that are not part of a VST Sound container.|boolean|
|**.ProjectFolder**|The file path to the project folder of your Steinberg DAW. The decomposed samples from disk or from VST Sound containers will be saved to this project folder if the FileProjectFolderCustom and the FileProjectFolderLibrary settings are set to true.|string|
|**.FileFolderNameCustom**|The file path to the folder in which the decomposed samples from disk will be saved. This setting applies only if FileProjectFolderCustom is set to false.|string|
|**.FileProjectFolderCustom**|If this is set to true, the decomposed samples from disk will be saved in the project folder of your Steinberg DAW. The file path of FileFolderNameCustom will be used instead, if this is set to false.|boolean|
|**.FileProjectSubFolderCustom**|This setting applies only if FileProjectFolderCustom is set to true.The decomposed samples from disk will be saved in the specified subfolder in the project folder of your Steinberg DAW. The decomposed samples will be saved directly to the project folder if this is empty.|string|
|**.FileFolderNameLibrary**|The file path to the folder in which the decomposed samples from VST Sound containers will be saved. This setting applies only if FileProjectFolderLibrary is set to false.|string|
|**.FileProjectFolderLibrary**|If this is set to true, the decomposed samples from VST Sound containers will be saved in the project folder of your Steinberg DAW, The file path of FileFolderNameLibrary will be used instead, if this is set to false.|boolean|
|**.FileProjectSubFolderLibrary**|This setting applies only if FileProjectFolderLibrary is set to true.The decomposed samples from VST Sound containers will be saved in the specified subfolder in the project folder of your Steinberg DAW. The decomposed samples will be saved directly to the project folder if this is empty.|string|
|**.SubFolder**|The decomposed samples will be saved to Tonal and Noise subfolders , if this is set to true.|boolean|

## Return Values

Returns a table with the decompose settings.

```lua
settings = getDecomposeSettings()
for setting, value in pairs(settings) do
    print(setting, value)
end
```

**See also:** [decompose](./decompose.md), [cancelDecompose](./cancelDecompose.md), [getDecomposeProgress](./getDecomposeProgress.md), [Decompose Output Modes](./Decompose-Output-Modes.md), [getDecomposeOutputPath](./getDecomposeOutputPath.md)