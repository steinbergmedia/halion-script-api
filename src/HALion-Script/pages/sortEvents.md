/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# sortEvents

>**sortEvents(eventsTable)**

## Description

Function to sort the events of the specified events table according to their PPQ position. The function sorts the events from first to last PPQ position. The events table is part of a tracks table which is part of the MIDI sequence table. See [MIDI Sequence Table](./MIDI-Sequence-Table.md) for details.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**eventsTable**|The table record referencing the events table.|table|

## Example

```lua
-- Produce a minor scale with reverse PPQ positions, then sort it.
 
-- Create MIDI sequence table.

midiSequence = { tracks = { { events = {} } } }
 
-- Initialize variables.

minorScaleIntervals = { 0, 2, 3, 5, 7, 8, 10, 12 }
root = 60  -- C3
ppqPosition = 7
 
-- Produce a minor scale with reverse PPQ positions.

for i, interval in ipairs(minorScaleIntervals) do
 
    local note = root + interval
 
    -- Create note-on event.

    local noteOn = Event(EventType.noteOn)
    noteOn.note = note
    noteOn.velocity = 100
    noteOn.ppqPosition = ppqPosition
 
    -- Create note-off event.

    local noteOff = Event(EventType.noteOff)
    noteOff.note = note
    noteOff.ppqPosition = ppqPosition + 1
 
    -- Insert the events in the MIDI sequence table with Lua's table.insert function.
    
    table.insert(midiSequence.tracks[1].events, noteOn)
    table.insert(midiSequence.tracks[1].events, noteOff)
 
    ppqPosition = ppqPosition -1
 
end
 
print("Sorting before sortEvents:")
 
for i, event in ipairs(midiSequence.tracks[1].events) do
    print(i, event)
end
 
print() -- Empty line.
 
sortEvents(midiSequence.tracks[1].events)
 
print("Sorting after sortEvents:")
 
for i, event in ipairs(midiSequence.tracks[1].events) do
    print(i, event)
end
 
print() -- Empty line.
```

**See also:** [readMidiFile](./readMidiFile.md), [writeMidiFile](./writeMidiFile.md), [insertEvent](./insertEvent.md), [MIDI Sequence Table](./MIDI-Sequence-Table.md), [MIDI File Format Types](./MIDI-File-Format-Types.md)