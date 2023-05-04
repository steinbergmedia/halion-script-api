/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# isKeyDown

>**isKeyDown(note)**

## Description

Function to detect whether a key with a specific note number is held or not.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**note**|The note number in the range of 0 to 127.|number|

## Return Values

Returns ``true`` if the key with the specified note number is held and ``false`` if the key has been released. The note events must come from outside the script, e.g., from the host software or another MIDI module.

## Example

```lua
-- Detect if a key is held.

function onNote(event)
    print("Note-on:")
    print("Note# "..event.note..", "..tostring(isKeyDown(event.note)))
    print("Note# "..(event.note + 12)..", "..tostring(isKeyDown(event.note + 12)).."\n")
end
 
function onRelease(event)
    print("Note-off:")
    print("Note# "..event.note..", "..tostring(isKeyDown(event.note)))
    print("Note# "..(event.note + 12)..", "..tostring(isKeyDown(event.note + 12)).."\n")
end
```

**See also:** [isOctaveKeyDown](./isOctaveKeyDown.md), [isNoteHeld](./isNoteHeld.md)