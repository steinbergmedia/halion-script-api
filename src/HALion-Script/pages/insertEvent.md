/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# insertEvent

>**insertEvent(eventsTable, event)**

## Description

Function to insert an event in the specified events table according to its PPQ position. The events table is part of a tracks table which is part of the MIDI sequence table. See [MIDI Sequence Table](./MIDI-Sequence-Table.md) for details.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**eventsTable**|The table record referencing the events table.|table|
|**event**|The Event object to be inserted.|Event|

## Example

```lua
-- Produce a minor scale and write it to a MIDI file.
 
-- Create the MIDI sequence table.
midiSequence = { tracks = { { events = {} } } }
 
-- Initialize variables.
minorScaleIntervals = { 0, 2, 3, 5, 7, 8, 10, 12 }
root = 60  -- C3
ppqPosition = 0
 
-- Produce the events of the minor scale.
for i, interval in ipairs(minorScaleIntervals) do
 
    local note = root + interval
 
    -- create note-on event
    local noteOn = Event(EventType.noteOn)
    noteOn.note = note
    noteOn.velocity = 100
    noteOn.ppqPosition = ppqPosition
 
    -- create note-off event
    local noteOff = Event(EventType.noteOff)
    noteOff.note = note
    noteOff.ppqPosition = ppqPosition + 1
 
    -- insert the events in the MIDI sequence table
    insertEvent(midiSequence.tracks[1].events, noteOn)
    insertEvent(midiSequence.tracks[1].events, noteOff)
 
    ppqPosition = ppqPosition + 1
 
end
 
-- Write the MIDI sequence table as .mid file to disk.
saveState = writeMidiFile ("c:/temp/test.mid", midiSequence) --[[ please set the file path to the desired
                                                                  location on your system before you run
                                                                  the script ]]
 
if saveState then
    print("The MIDI file was successfully written.")
else
    print("The MIDI file could not be written!")
end
```

**See also:** [readMidiFile](./readMidiFile.md), [writeMidiFile](./writeMidiFile.md), [sortEvents](./sortEvents.md), [MIDI Sequence Table](./MIDI-Sequence-Table.md), [MIDI File Format Types](./MIDI-File-Format-Types.md)