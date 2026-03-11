/* ANCHOR: all */

// ANCHOR: function
>**setWavetable(index, wavetable)**

{{#include ../../_Version.md:halion750}}
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to set the wavetable data of a wavetable oscillator in the specified zone. The wavetable data is stored in a predefined [Wavetable Table](./Wavetable-Table.md). You specify the zone with [getZone](./getZone.md) or [findZones](./findZones.md). The index refers to oscillator 1 and oscillator 2 of the wavetable zone.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**index**|The index of the oscillator.|number|
|**wavetable**|The table that contains the wavetable data. The structure of the table is defined in the [Wavetable Table](./Wavetable-Table.md).|table|
// ANCHOR_END: arguments

#### Remarks

// ANCHOR: remarks
**linkEnvelope:** Waves in the wavetable are organized into *wave sequences* — groups of consecutive waves sharing the same [filename](./Wavetable-Table.md#wave-fields). For each sequence, ``setWavetable`` reads the ``linkEnvelope`` field of the first wave and propagates that value to all waves of the sequence in the oscillator's wavetable. Additionally, ``setWavetable`` verifies that the ``time`` of each wave is consistent with its [samplePos](./Wavetable-Table.md#wave-fields). If any wave in a sequence fails this check, ``linkEnvelope`` is set to ``false`` for all waves of that sequence in the oscillator's wavetable, overriding the ``linkEnvelope`` field of the first wave.
// ANCHOR_END: remarks

#### Example

// ANCHOR: example
{{#include ./_getWavetable-setWavetable-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */