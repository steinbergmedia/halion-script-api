/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# isOctaveKeyDown

>**isOctaveKeyDown(note)**

## Description

Function to detect whether a key is held or not, regardless of the octave.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**note**|The note number which specifies the key in the range of 0 to 127.|number|

## Return Values

Returns ``true`` if the specified key is held, no matter in which octave. The function returns ``false`` if the specified key and any octave keys have been released. The note events must come from outside the script, e.g., from the host software or another MIDI module.

## Example

```lua
-- Detect whether a key is held, no matter in which octave.
function onNote(event)
    print("Note-on:")
    print("Note #: "..event.note..", "..tostring(isOctaveKeyDown(event.note)))
    print("Note #: "..(event.note+7)..", "..tostring(isOctaveKeyDown(event.note+7)))
    print("Note #: "..(event.note + 12)..", "..tostring(isOctaveKeyDown(event.note + 12)).."\n")
end
 
function onRelease(event)
    print("Note-off:")
    print("Note #: "..event.note..", "..tostring(isOctaveKeyDown(event.note)))
    print("Note #: "..(event.note+7)..", "..tostring(isOctaveKeyDown(event.note+7)))
    print("Note #: "..(event.note + 12)..", "..tostring(isOctaveKeyDown(event.note + 12)).."\n")
end
```

**See also:** [isKeyDown](./isKeyDown.md), [isNoteHeld](./isNoteHeld.md)