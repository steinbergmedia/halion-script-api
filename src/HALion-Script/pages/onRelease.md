/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onRelease

>**onRelease(event)**

## Description

This callback function is called when the script module receives a note-off event.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|event|[Event](./Event.md) object of the type noteOff.|[Event](./Event.md)|

## Fields

Note-off events use the following fields of the [Event](./Event.md) object.

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of event (2 = noteOff). See [Event Types](./Event-Types.md) for details.|number|
|**.id**|The note ID of the note-off event.|number|
|**.note**|The note number in the range of 0 to 127.|number|
|**.velocity**|The note-off velocity in the range of 0 to 127.|number|

## Example

```lua
-- Print all held notes.

local heldNotes = {}
 
function stringOfNotes()
    local ret =""
    for note, velocity in pairs(heldNotes) do
        ret = ret.." "..tostring(note)
    end
    return ret
end
 
function onNote(event)
    heldNotes[event.note] = event.velocity
    print("Held notes:", stringOfNotes())
    local id = postEvent(event)
end
 
function onRelease(event)
    heldNotes[event.note] = nil
    print("Held notes:", stringOfNotes())
    postEvent(event)
end
```

**See also:** [onNote](./onNote.md), [postEvent](./postEvent.md), [playNote](./playNote.md), [releaseVoice](./releaseVoice.md), [onRetrigger](./onRetrigger.md), [setBaypassNoteOff](./setBypassNoteOff.md)