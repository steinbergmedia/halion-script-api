/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getMediaBayAttributes

**getMediaBayAttributes(filename)**

## Description

Reads the MediaBay attributes from a specified VST preset or audio file.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**filename**|The absolute path and name of the VST preset or audio file.|string|

## Return Values

Returns a table containing the MediaBay attributes of the specified file. Each entry in the table is a key-value pair, where the key is the attribute name and the value is the metadata stored in MediaBay.

Raises an error if the file cannot be found or is invalid.

## MediaBay Attributes

[getMediaBayAttributes](./getMediaBayAttributes.md) can read any of the following attributes.

{{#include ./_MediaBay_Attributes.md:all}}

>&#10069; See [MediaBay Guideline](../../HALion-Tutorials-Guidelines/pages/MediaBay-Guideline.md) for more information about the attributes and how to use them.

## Example

{{#include ./_getSetMediaBayAttributes-Example.md}}

**See also:** [setMediaBayAttributes](./setMediaBayAttributes.md), [savePreset](./savePreset.md)