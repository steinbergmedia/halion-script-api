/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# MIDI Sequence Table

---

**On this page:**

[[_TOC_]]

---

## Description

MIDI Files are managed through a special predefined table: the MIDI sequence table. This table allows you to change values and add or remove notes like with normal Lua tables, but the structure of that table must remain as defined below.

**Available in:** Controller.

## MIDI Sequence Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.format**|The MIDI file format. It can be determined via names or indices.<ul><li>MidiFileFormat.singleMultiChannelTrack or 0 = Format 0 (one single multi-channel track)</li><li>MidiFileFormat.simultaneousTracks or 1 = Format 1 (one or more tracks to be played simultaneously)</li></ul>The default is format 0. See MIDI File Format Types for details.|enum or number|
|**.smpteformat**|The SMPTE format.<ul><li>0 = Ticks per beat</li><li>-24 = Ticks per frame at 24 frames per second</li><li>-25 = Ticks per frame at 25 frames per second.</li><li>-29 = Ticks per frame at 30 frames per second, drop frame.</li><li>-30 = Ticks per frame at 30 frames per second, non-drop frame.</li></ul>The default format is 0.|number|
|**.division**|Specifies the ticks used for the SMPTE format. The default is 480 ticks.|number|
|**.tempo**|The original tempo in beats per minute. The default is 120 BPM.|number|
|**.signature**|The time signature of the MIDI file as a table. Numerator and denominator are separate fields of that table (see Signature Table below).|table|
|**.songname**|The name of the song.|string|
|**.tracks**|The tracks of the MIDI file as an array with the index starting at 1. Name, channel and event are separate fields of that table (see Tracks Table below).|table|

## Signature Table

|Field|Description|Value Type|
|:-|:-|:-|
|**.numerator**|The numerator of the time signature. The default is 4.|number|
|**.denominator**|The denominator of the time signature. The default is 4.|number|

## Tracks Table

|Field|Description|Value Type|
|:-|:-|:-|
|**.name**|The name of the track.|string|
|**.channel**|The MIDI channel of the track. The default is 1.|number|
|**.events**|The events of the track as an array with the index starting at 1. The events are stored as Event objects.|table|

## Example

To explore the following script:

1. Download [C Major Scale.mid.](../mid/C%20Major%20Scale.mid)
1. Create an empty program and add a script module.
1. Paste the script into the text editor of the script module and adjust the file path of readMidiFile to the location of the file on your system.
1. Execute the script.

```lua
-- Read information from a MIDI file.

midiseq = readMidiFile("c:/temp/C Major Scale.mid") --[[ please set the file path to the location
                                                         of the file on your system before you run
                                                         the script ]]
-- Information from the header chunk.

print("Standard MIDI File Format:", midiseq.format)
print("SMPTE:", midiseq.smpteformat)
print("Division:", midiseq.division)
 
-- Information from the track chunk.

print("Tempo:", midiseq.tempo)
print("Signature:", midiseq.signature.numerator, "/", midiseq.signature.denominator)
print("Song Name:", midiseq.songname)
print("Number of Tracks:", #midiseq.tracks)
print("Name of 1st Track:", midiseq.tracks[1].name)
print("Channel of 1st Track:", midiseq.tracks[1].channel)
print("Number of Events in 1st Track", #midiseq.tracks[1].events, "\n")
```

**See also:** [readMidiFile](./readMidiFile.md), [writeMidiFile](./writeMidiFile.md), [insertEvent](./insertEvent.md), [sortEvents](./sortEvents.md), [MIDI File Format Types](./MIDI-File-Format-Types.md)