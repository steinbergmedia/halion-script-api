/* ANCHOR: all */

// ANCHOR: function
>**Event(type)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Constructor to create a new [Event](./Event.md) object of the specified type.

**Available in:** Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**type**|The type of event. See [Event Types](./Event-Types.md) for details.|enum or number|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns a new [Event](./Event.md) object of the specified type.

>&#10069; The fields of the [Event](./Event.md) object must be set after its creation.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
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
// ANCHOR_END: example

/* ANCHOR_END: all */