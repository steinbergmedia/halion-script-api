/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# MIDI File Format Types

#### Description

Enumerator to identify the different MIDI file formats.

* Format 0: The data is stored in one single multi-channel track.
* Format 1: The data is stored in separate tracks to be played simultaneously.

MidiFileFormat.singleMultiChannelTrack refers to format 0 and MidiFileFormat.simultaneousTracks to format 1.

>&#10069; Format 2 is seldomly used and therefore not supported.

**Available in:** Controller.

#### MIDI File Format Types

|Index|Name|
|:-|:-|
|0|MidiFileFormat.singleMultiChannelTrack|
|1|MidiFileFormat.simultaneousTracks|

#### Example

To explore the following script:

1. Download [Format 0.mid](../mid/Format%200.mid) and [Format 1.mid](../mid/Format%201.mid).
1. Create an empty program and add a script module.
1. Paste the script into the text editor of the script module and adjust the file path of readMidiFile to the location of the files on your system.
1. Execute the script.

```lua
-- Detect the format of the MIDI files.

midiseq = {}

midiseq[1] = readMidiFile("c:/temp/Format 0.mid")
midiseq[2] = readMidiFile("c:/temp/Format 1.mid") --[[ please set the file path to the location
                                                       of the files on your system before you run
                                                       the script ]]
 
for i, seq in ipairs(midiseq) do
    if seq.format == MidiFileFormat.singleMultiChannelTrack then
        print(seq.songname..".mid has MIDI file format 0.")
    elseif seq.format == MidiFileFormat.simultaneousTracks then
        print(seq.songname..".mid has MIDI file format 1.")
    else
        print("Midi file format of "..seq.songname.." not supported!")
    end
end
```

**See also:** [MIDI Sequence Table](./MIDI-Sequence-Table.md), [readMidiFile](./readMidiFile.md), [writeMidiFile](./writeMidiFile.md), [insertEvent](./insertEvent.md), [sortEvents](./sortEvents.md)