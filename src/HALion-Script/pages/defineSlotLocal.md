/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# defineSlotLocal

>**defineSlotLocal(name)**

## Description

Function to attain global variables that operate independently per slot. You can call defineSlotLocal before or after the initialization of the corresponding variable, but it is common practice to call the function in advance. For more details see [Using Slot Local Variables](./Using-Slot-Local-Variables.md).

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**name**|The name of the global variable.|string|

## Example

```lua
-- Store held notes in a note buffer and print them out.
 
-- Declare the note buffer as slot local.
defineSlotLocal("noteBuffer")
 
-- Initialize the note buffer.
noteBuffer = {}
 
-- Print all notes in the note buffer.
function printNoteBuffer()
    for note, velocity in pairs(noteBuffer) do
        print("Note# = "..note..", Velocity = "..velocity)
    end
    print()
end
 
-- Write notes to the buffer and print them.
function onNote(event)
    postEvent(event)
    noteBuffer[event.note] = event.velocity
    printNoteBuffer()
end
 
-- Remove notes from the buffer and print the remaining ones.
function onRelease(event)
    postEvent(event)
    noteBuffer[event.note] = nil
    printNoteBuffer()
end
```

**See also:** [Using Slot Local Variables](./Using-Slot-Local-Variables.md)