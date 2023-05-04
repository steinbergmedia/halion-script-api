/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onPitchBend

>**onPitchBend(event)**

## Description

This callback function is called when the script module receives a pitch bend event. The ``.value`` field of the [Event](./Event.md) object contains the pitch bend value as a signed integer in the range from -8191 to 8191. The ``.bend`` field contains the pitch bend value as a floating point number in the range from -1.0 to 1.0. Use ``.bend`` for greater accuracy.

>&#10069; If your script doesn't implement onPitchBend, all pitch bend events will be passed on to [onController](./onController.md).

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|[Event](./Event.md) object of the type controller.|[Event](./Event.md)|

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of event (3 = controller). See [Event Types](./Event-Types.md) for details.|number|
|**.bend**|The pitch bend value in the range of -1.0 to 1.0.|number|
|**.value**|The pitch bend value in the range of -8191 to 8191.|number|

## Example

```lua
-- Print event.value and event.bend.

function onPitchBend(event)
    print("event.value: "..event.value.."\n".."event.bend: "..event.bend)
    postEvent(event)
end
```

**See also:** [pitchBend](./pitchBend.md), [onController](./onController.md), [onAfterTouch](./onAfterTouch.md)