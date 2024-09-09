/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# setBypassNoteOff

{{#include ../../_Version.md:halion710}}

>**setBypassNoteOff(note, enable)**

## Description

The Halion engine keeps track of notes triggered by [playNote](./playNote.md). If note-off events are left unhandled in the [onRelease](./onRelease.md) callback and the script module is bypassed or removed from the slot, note events that were triggered by [playNote](./playNote.md) may cause hanging notes. This can be avoided by calling this function in the [onRelease](./onRelease.md) callback. The [setBypassNoteOff](#setbypassnoteoff) function forces a note-off to be sent for the note specified by the ``note`` argument. A note-off is only sent if the function's ``enable`` argument is ``true``. The ``enable`` argument is optional and defaults to ``true`` if not set. When set to ``false``, it disables the sending of a note-off.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**note**|The MIDI note number.|number|
|**enable**|A note-off will only be sent if this argument is ``true``. The argument defaults to ``true`` if not set. When set to ``false``, it disables the sending of a note-off.|boolean, optional|

## Example

```lua
lastID = -1
function doNote()
    if lastID ~= -1 then
        releaseVoice(lastID)
    end
    if note ~= -1 then
        lastID = playNote(note, 100)
    else
        lastID = -1
    end
end
function onPlayNote()
    runSync(doNote)
end
function onRelease(ev)
    if note == -1 then
        postEvent(ev)
    else
        setBypassNoteOff(note) -- Hanging Notes may occur if this is missing.
    end
end
defineParameter("note", nil, -1, -1, 127, onPlayNote) 
```

**See also:** [playNote](./playNote.md), [onRelease](./onRelease.md)