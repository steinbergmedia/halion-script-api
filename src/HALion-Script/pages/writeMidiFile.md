/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# writeMidiFile

>**writeMidiFile(path, midiSequence)**

#### Description

Function to write a MIDI file (.mid) to disk.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**path**|The path and file name of the MIDI file.|string|
|**midiSequence**|The MIDI sequence table that contains the data. The structure of the table is defined in the [MIDI Sequence Table](./MIDI-Sequence-Table.md).|table|

#### Return Values

Returns ``true`` if the MIDI file was written successfully and ``false`` if not.

#### Example

{{#include ./_insertEvent-writeMidiFile-Example.md}}

**See also:** [readMidiFile](./readMidiFile.md), [insertEvent](./insertEvent.md), [sortEvents](./sortEvents.md), [MIDI Sequence Table](./MIDI-Sequence-Table.md), [MIDI File Format Types](./MIDI-File-Format-Types.md)