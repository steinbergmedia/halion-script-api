/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# setBypassNoteOff

{{#include ../../_Version.md:halion710}}

>**setBypassNoteOff(note, enable)**

## Description

The [playNote](./playNote.md) callback can disable the sending of a note-off. It does this by setting an internal flag in HALion's voice manager. If the script module is bypassed or removed from the slot, note events that were triggered by the [playNote](./playNote.md) callback may cause hanging notes. The [setBypassNoteOff](#setbypassnoteoff) function forces a note-off to be sent for the note specified by the ``note`` argument. By implementing this function in the [onRelease](./onRelease.md) callback, hanging notes can be avoided. A note-off is only sent if the function's ``enable`` argument is ``true``. The ``enable`` argument is optional and defaults to ``true`` if not set. If set to ``false``, the internal flag in HALion's voice manager and thus the sending of a note-off are disabled, as does the [playNote](./playNote.md) callback.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**note**|The MIDI note number of the note.|number|
|**enable**|A note-off when bypassing the script module or removing it from the slot will only be sent if this argument is ``true``. The argument is optional and defaults to ``true``. If set to ``false``, it disables the sending of a note-off.|boolean, optional|

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

**See also:** [onNote](./onNote.md), [playNote](./playNote.md), [postEvent](./postEvent.md), [onRelease](./onRelease.md), [releaseVoice](./releaseVoice.md), [onRetrigger](./onRetrigger.md)