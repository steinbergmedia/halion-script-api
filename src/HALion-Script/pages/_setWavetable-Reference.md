/* ANCHOR: all */

// ANCHOR: function
>**getWavetable(index, wavetable)**
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
|**wavetable**|The table that contains the wavetable data. The structure of the table is defined in the Wavetable Table.|table|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
{{#include ./_getWavetable-setWavetable-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */