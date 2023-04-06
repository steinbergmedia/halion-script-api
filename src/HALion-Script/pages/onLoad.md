/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onLoad

>**onLoad(data)**

## Description

This callback function is called when the script module is loaded as part of a preset or project. The data that is passed on is the data that was returned by [onSave](./onSave.md) when the script module was saved.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**data**|The data that was returned by onSave.|table (as is usual)|

## Example

{{#include ./_onLoad-onSave-Example.md}}

**See also:** [onSave](./onSave.md)