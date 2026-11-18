/* ANCHOR: all */

// ANCHOR: function
>**getWavetable(index)**

{{#include ../../_Version.md:halion7510}}
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to obtain the wavetable data of a wavetable oscillator in the specified zone. The wavetable data is stored in a predefined [Wavetable Table](./Wavetable-Table.md). You specify the zone with [getZone](./getZone.md) or [findZones](./findZones.md). The index refers to oscillator 1 and oscillator 2 of the wavetable zone. 

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**index**|The index of the oscillator.|number|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns a table with tables for each wave and fields that define the playback of the wavetable. See [Wavetable Table](./Wavetable-Table.md) for details. The function returns ``nil`` if the zone is not a wavetable zone. If the zone is a wavetable zone but the oscillator has no waves loaded, the function returns an empty table (``#wt == 0``).
// ANCHOR_END: return-values


#### Example

// ANCHOR: example
{{#include ./_getWavetable-setWavetable-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */