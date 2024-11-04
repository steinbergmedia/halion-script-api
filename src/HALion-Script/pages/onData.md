/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onData

>**onData(event)**

{{#include ../../_Version.md:halion700}}

## Description

This callback is called when the script module receives a system exclusive message.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|[Event](./Event.md) object of the type data.|[Event](./Event.md)|

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of event (7 = data). See [Event Types](./Event-Types.md) for details.|number|
|**.data**|An array with the bytes of the system exclusive message. To determine the number of bytes in the system-exclusive message, use the length operator ``#``. For the interpretation of these values, please consult the documentation of the MIDI data format of the device sending the system exclusive message.|table|
|**.dataType**|Currently, there is only one data type (0 = sysex).|number|


## Example

```lua
function onData(event)
	print (event)
	local sysex = event.data
	for i,b in ipairs(sysex) do
		print (b)
	end
end
```
