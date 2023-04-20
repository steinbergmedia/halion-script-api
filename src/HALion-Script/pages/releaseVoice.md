/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# releaseVoice

>**releaseVoice(noteID)**

#### Description

Function to release a note with a specific note ID.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**noteID**|The note ID of the note you want to release.|number|

#### Example

```lua
-- Generate major chords.

local notes = {}
 
function onNote(event)
 
  local id1 = playNote(event.note, event.velocity)
  local id2 = playNote(event.note + 4, event.velocity)
  local id3 = playNote(event.note + 7, event.velocity)
   
  local ids = notes[event.note]
  if ids == nil then
     ids = {}
     notes[event.note] = ids
  end
   
  table.insert(ids, id1)
  table.insert(ids, id2)
  table.insert(ids, id3)
 
end
 
function onRelease(event)
 
  for i,v in ipairs(notes[event.note]) do
    releaseVoice(v)
  end
 
  notes[event.note] = nil
 
end
```

**See also:** [onNote](./onNote.md), [postEvent](./postEvent.md), [playNote](./playNote.md), [onRelease](./onRelease.md)