/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# insertEvent

>**insertEvent(eventsTable, event)**

#### Description

Function to insert an event in the specified events table according to its PPQ position. The events table is part of a tracks table which is part of the MIDI sequence table. See [MIDI Sequence Table](./MIDI-Sequence-Table.md) for details.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**eventsTable**|The table record referencing the events table.|table|
|**event**|The Event object to be inserted.|Event|

#### Example

{{#include ./_insertEvent-writeMidiFile-Example.md}}

**See also:** [readMidiFile](./readMidiFile.md), [writeMidiFile](./writeMidiFile.md), [sortEvents](./sortEvents.md), [MIDI Sequence Table](./MIDI-Sequence-Table.md), [MIDI File Format Types](./MIDI-File-Format-Types.md)