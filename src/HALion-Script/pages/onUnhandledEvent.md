/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onUnhandledEvent

>**onUnhandledEvent(event)**

## Description

This callback function is called when the script module receives an event that is not handled by the specific event callback functions, e.g., [onNote](./onNote.md), [onRelease](./onRelease.md), [onController](./onController.md) and [onNoteExpression](./onNoteExpression.md). If none of the specific callback functions are defined, onUnhandledEvent will receive all incoming events.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|The [Event](./Event.md) object.|[Event](./Event.md)|

## Example

```lua
-- Print unhandled events.

function onUnhandledEvent(event)
    print(event)
    postEvent(event)
end
```

**See also:** [onNote](./onNote.md), [onRelease](./onRelease.md), [onController](./onController.md), [onNoteExpression](./onNoteExpression.md)