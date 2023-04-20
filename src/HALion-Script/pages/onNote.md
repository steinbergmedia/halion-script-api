/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onNote

>**onNote(event)**

#### Description

This callback function is called when the script module receives a note-on event.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|Event object of the type noteOn.|Event|

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of event (1 = noteOn). See Event Types for details.|number|
|**.id**|The note ID of the note-on event.|number|
|**.note**|The note number in the range of 0 to 127.|number|
|**.velocity**|The note-on velocity in the range of 0 to 127.|number|

#### Example

```lua
-- Print note ID, note number and velocity.

function onNote(event)
    local id = postEvent(event)
    print("ID: "..id..", Note #: "..event.note..", Velocity: "..event.velocity)
end
```

**See Also:** [postEvent](./postEvent.md), [playNote](./playNote.md), [releaseVoice](./releaseVoice.md)