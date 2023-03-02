/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Event Constructor

>**Event(type)**

## Description

Constructor to create a new [Event](./Event.md) object of the specified type.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**type**|The type of event. See [Event Types](./Event-Types.md) for details.|enum or number|

## Return Values

Returns a new [Event](./Event.md) object of the specified type.

>The fields of the [Event](./Event.md) object must be set after its creation.

## Example

```lua
-- Create a new note-on event.
function onNote(event)
    local newEvent = Event(EventType.noteOn)
    newEvent.note = event.note + 12
    newEvent.velocity = event.velocity
    local id = postEvent(newEvent)
    waitForRelease()
    releaseVoice(id)
end
```

**See also:** [Event](./Event.md), [Event Types](./Event-Types.md)