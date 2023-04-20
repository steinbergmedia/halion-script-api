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
 
    -- Create note-on event.

    local noteOn = Event(EventType.noteOn)
    noteOn.note = note
    noteOn.velocity = 100
    noteOn.ppqPosition = ppqPosition
 
    -- Create note-off event.

    local noteOff = Event(EventType.noteOff)
    noteOff.note = note
    noteOff.ppqPosition = ppqPosition + 1
 
    -- Insert the events in the MIDI sequence table.

    insertEvent(midiSequence.tracks[1].events, noteOn)
    insertEvent(midiSequence.tracks[1].events, noteOff)
 
    ppqPosition = ppqPosition + 1
 
end
 
-- Write the MIDI sequence table as .mid file to disk.

saveState = writeMidiFile ("c:/temp/test.mid", midiSequence) --[[ Please set the file path to the desired
                                                                  location on your system before you run
                                                                  the script. ]]
 
if saveState then
    print("The MIDI file was successfully written.")
else
    print("The MIDI file could not be written!")
end
```
