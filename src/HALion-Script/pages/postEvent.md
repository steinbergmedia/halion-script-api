/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# postEvent

>**postEvent(event, delay)**

## Description

Function to post the event to the engine. The second argument is optional. It allows you to delay the event by a specific time in milliseconds.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|The [Event](./Event.md) object that will be posted.|[Event](./Event.md)|
|**delay**|Delay time in milliseconds. The default is 0 ms.|number, optional|

## Return Values

Returns a note ID in case of a note-on event, ``nil`` for any other type of event. For this reason, assigning the return value of postEvent to a variable is only meaningful in the [onNote](./onNote.md) callback.

## Example

```lua
local delayTime = 1000
 
-- Post event and print note ID.
function onNote(event)
    local id = postEvent(event, delayTime)
    print("ID: "..id)
end
  
-- Post event and print note ID.
function onRelease(event)
    postEvent(event, delayTime)
    print("ID: "..event.id)
end
 
-- Post event, then print controller number and value.
function onController(event)
    postEvent(event)
    print("Controller #: "..event.controller..", Value: "..event.value)
end
```

**See also:** [onNote](./onNote.md), [playNote](./playNote.md), [onRelease](./onRelease.md), [releaseVoice](./releaseVoice.md)