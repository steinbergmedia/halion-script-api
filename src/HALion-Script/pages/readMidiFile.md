/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# readMidiFile

>**readMidiFile(path)**

## Description

Function to read a MIDI file (.mid). The function creates a MIDI sequence table that contains the data of the MIDI file. See [MIDI Sequence Table](./MIDI-Sequence-Table.md) for details on the fields of the MIDI sequence table.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**path**|The path and file name of the MIDI file.|string|

## Return Values

Returns a MIDI sequence table. See [MIDI Sequence Table](./MIDI-Sequence-Table.md) for details.

## Example

To explore the following script:

1. Download [C Major Scale.mid.](../mid/C%20Major%20Scale.mid)
1. Create an empty program and add a script module.
1. Paste the script into the text editor of the script module and adjust the file path of readMidiFile to the location of the file on your system.
1. Execute the script.

```lua
-- Read note-on events from a MIDI file and play them.
 
midiSequence = readMidiFile("c:/temp/C Major Scale.mid") --[[ Please set the file path to the location
                                                              of the file on your system before you run
                                                              the script.]]
numberOfEvents = #midiSequence.tracks[1].events
i = 1
 
print(midiSequence.songname..".mid loaded!")
 
function onNote(event)
    
    -- Start from the beginning if the last event has been reached.
    
    if i >= numberOfEvents then
        i = 1
    end
    
    -- Find the next note-on event.
    
    repeat
        event = midiSequence.tracks[1].events[i]
        i = i + 1
        if i > numberOfEvents then
            return
        end
    until event.type == EventType.noteOn
    
    -- Print and play the note-on events.
    
    print(event)
    local id = playNote(event.note, event.velocity, 0)
    wait(getBeatDuration()*0.5)
    releaseVoice(id)
    
end
```

**See also:** [writeMidiFile](./writeMidiFile.md), [insertEvent](./insertEvent.md), [sortEvents](./sortEvents.md), [MIDI Sequence Table](./MIDI-Sequence-Table.md), [MIDI File Format Types](./MIDI-File-Format-Types.md)