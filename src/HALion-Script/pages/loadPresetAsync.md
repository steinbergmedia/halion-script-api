/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# loadPresetAsync

>**loadPresetAsync(path, callback)**

## Description

Function to load the elements of a VST preset in a separate, parallel thread. Loading the VST preset in a separate thread can be necessary if the preset is too big to be loaded in a short time. The function returns a [LoadProgress](./LoadProgress.md) object that can be used to get information on the load progress and the loaded elements, for example. After the preset is loaded, the callback function is called. The callback function gets the [LoadProgress](./LoadProgress.md) object as default argument.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**path**|The path and file name of the VST preset.|string|
|**callback**|Callback function that is called after the preset is loaded. The callback function gets the [LoadProgress](./LoadProgress.md) object as argument.|function, optional|

## Return Values

Returns a [LoadProgress](./LoadProgress.md) object.

## Example

{{#include ./_loadPresetAsync-Example.md}}

**See also:** [loadPreset](./loadPreset.md), [LoadProgress](./LoadProgress.md)