>**setSource2(source, sourceInfo1, sourceInfo2)**

#### Description

Function to set the 2nd modulation source of a row in the modulation matrix. The row is specified with the Zone object of the zone and the index of the modulation matrix row.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**source**|The modulation source. It can be determined via names or indices. See [Modulation Source Types](./Modulation-Source-Types.md) for details. Standard modulation sources like the LFOs or the envelopes can be set directly. Special modulation sources like MIDI controllers or MIDI modules can only be set by also specifiying sourceInfo1 and sourceInfo2.|enum or number|
|**sourceInfo1**|Optional argument to specify the MIDI controller number or the MIDI module, for example. See example for details.|number or [MidiModule](./MidiModule.md), optional|
|**sourceInfo2**|Optional argument to select the modulation output of a MIDI module, for example. See example for details.|number, optional|

#### Example

{{#include ./_ModulationSourceTypes-Example.md}}
