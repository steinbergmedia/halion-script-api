/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# isNoteHeld

>**isNoteHeld()**

#### Description

Function to detect inside the [onNote](./onNote.md) callback function if a note is held or not.

>&#10069; isNoteHeld is specific to the [onNote](./onNote.md) callback function. Calling this function inside other callback functions is not permitted.

**Available in:** Processor.

#### Return Values

Returns ``true`` if [onNote](./onNote.md) has received a note-on event and ``false`` if [onNote](./onNote.md) has received a corresponding note-off event. The note events must come from outside the script, e.g., from the host software or another MIDI module.

#### Example

```lua
-- Detect inside onNote, if a note is held.

function onNote(event)
    print("Note #: "..event.note..", "..tostring(isNoteHeld()))
    waitForRelease()
    print("Note #: "..event.note..", "..tostring(isNoteHeld()))
end
```

**See also:** [isKeyDown](./isKeyDown.md), [isOctaveKeyDown](./isOctaveKeyDown.md)