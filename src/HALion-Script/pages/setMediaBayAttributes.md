/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# setMediaBayAttributes

**setMediaBayAttributes(filename, attrs)**

## Description

Writes MediaBay attributes to a specified VST preset or audio file. Only the MediaBay attributes listed below can be set. An attribute can be deleted by assigning an empty string (``""``) as its value. Setting only a subset of attributes leaves all other existing attributes in the file unchanged. Attempting to set an unsupported attribute raises an error.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**filename**|The absolute path and name of the VST preset or audio file.|string|
|**attrs**|A table with MediaBay attributes and values.|table|

## MediaBay Attributes

MediaBay attributes are stored in VST presets and allow for browsing them in MediaBay. You can modify and write the following attributes with this function.

{{#include ./_MediaBay_Attributes.md:setMediaBayAttributes}}

>&#10069; See [MediaBay Guideline](../../HALion-Tutorials-Guidelines/pages/MediaBay-Guideline.md) for more information about the attributes and how to use them.

## Example

{{#include ./_getSetMediaBayAttributes-Example.md}}

**See also:** [getMediaBayAttributes](./getMediaBayAttributes.md), [savePreset](./savePreset.md)