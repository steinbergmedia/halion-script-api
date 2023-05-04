/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onAfterTouch

>**onAfterTouch(event)**

## Description

This callback function is called when the script module receives a channel aftertouch event.

>&#10069; If the script doesn't implement onAfterTouch, all aftertouch events will be passed on to [onController](./onController.md).

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|[Event](./Event.md) object of the type controller.|[Event](./Event.md)|

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of event (3 = controller). See [Event Types](./Event-Types.md) for details.|number|
|**.value**|The aftertouch value in the range of 0 to 127.|number|

## Example

```lua
-- Print the aftertouch value.

function onAfterTouch(event)
    postEvent(event)
    print("Aftertouch: "..event.value)
end
```

**See also:** [afterTouch](./afterTouch.md), [onController](./onController.md), [onPitchBend](./onPitchBend.md)