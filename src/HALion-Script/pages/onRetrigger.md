/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onRetrigger

>**onRetrigger(event)**

{{#include ../../_Version.md:halion700}}

## Description

This callback function is called when the script module receives a note-retrigger event.

>&#10069; Note-retrigger events occur only if Mono and Retrigger are active for the corresponding program or layer.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|[Event](./Event.md) object of the type noteRetrigger.|[Event](./Event.md)|

## Fields

Note-retrigger events use the following fields of the [Event](./Event.md) object.

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of event (6 = noteRetrigger). See [Event Types](./Event-Types.md) for details.|number|
|**.id**|The note ID of the note-off event.|number|
|**.note**|The note number in the range of 0 to 127.|number|
|**.velocity**|The note-off velocity in the range of 0 to 127.|number|
|**.tuning**|The tune offset in semitones.|number|

>&#10069; The note ids of the note-retrigger events cannot be used in functions like [releaseVoice](./releaseVoice.md), [changeVolume](./changeVolume.md), [changeNoteExpression](./changeNoteExpression.md), etc. You must use the note id of the original note-on event instead. See [Example 2](#example-2) for details.

## Example 1

```lua
notes = {}
 
function onNote(event)
    local id = postEvent(event)
    print(event)
    local ids = notes[event.note]
    if ids == nil then
        ids = {}
        notes[event.note] = ids
    end
    table.insert(ids, id)
end
 
-- transpose the note-retrigger event
function onRetrigger(event)
    print(event)
    local id = playNote(event.note + 12, event.velocity, 0)
    table.insert(notes[event.note], id)
end
 
function onRelease(event)
    print(event)
    for i, noteId in ipairs(notes[event.note]) do
        releaseVoice(noteId)
    end
    notes[event.note] = nil
end
```

## Example 2

```lua
notes = {}
retrigger = {}
function onNote(event)
    local id = postEvent(event)
    print(event)
    retrigger[event.note] = false
    local ids = notes[event.note]
    if ids == nil then
        ids = {}
        notes[event.note] = ids
    end
    table.insert(ids, id)
end
   
-- send the note-retrigger event after 500 ms into release and retrigger only once
function onRetrigger(event)
    if not retrigger[event.note] then
        postEvent(event)
        print(event)
        retrigger[event.note] = true
        wait(500)
        if notes[event.note] then
            for i, noteId in ipairs(notes[event.note]) do
                releaseVoice(noteId)
                print("releaseVoice with id "..noteId)
            end
        end
    end
end
   
function onRelease(event)
    postEvent(event)
    print(event)
    notes[event.note] = nil
end
```

**See also:** [onNote](./onNote.md), [onRelease](./onRelease.md), [releaseVoice](./releaseVoice.md), [postEvent](./postEvent.md), [playNote](./playNote.md)