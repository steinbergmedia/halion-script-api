/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# startWriteOutputToFile

>**startWriteOutputToFile(filename, append, silent)**

## Description

Function to write the ouput of print functions to a file. Only the print functions between startWriteOutputToFile and [stopWriteOutputToFile](./stopWriteOutputToFile.md) are considered.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**filename**|The absolute path and name of the file.|string|
|**append**|Appends the output to the file if this is set to ``true``.|boolean|
|**silent**|Hides the console output if this is set to ``true``.|boolean|

## Example

{{#include ./_startStopWriteOutputToFile-Example.md}}

**See also:** [stopWriteOutputToFile](./stopWriteOutputToFile.md)