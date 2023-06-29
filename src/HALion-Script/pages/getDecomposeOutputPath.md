/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getDecomposeOutputPath

>**getDecomposeOutputPath(filePath)**

## Description

This function evaluates the decompose settings of the plug-in and the file path of the original sample and returns the file path to the folder in which the decomposed samples are to be be saved. You can use this function to alter the outputPath argument of the [decompose](./decompose.md) function, e.g., to write the decomposed samples in a subfolder. The complete record of the decompose settings of the plug-in can be obtained with [getDecomposeSettings](./getDecomposeSettings.md).

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**filePath**|The file path of the original sample.|string|

## Return Values

Returns the file path to the folder in which the decomposed samples are to be be saved.

## Example

{{#include ./_decompose-Example.md}}

**See also:** [decompose](./decompose.md), [cancelDecompose](./cancelDecompose.md), [getDecomposeProgress](./getDecomposeProgress.md), [Decompose Output Modes](./Decompose-Output-Modes.md), [getDecomposeSettings](./getDecomposeSettings.md)