/* ANCHOR: all */

// ANCHOR: function
>**getSource1()**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the 1st modulation source of a row in the modulation matrix. The row is specified with the [Zone](./Zone.md) object of the zone and the index of the modulation matrix row.

**Available in:** Processor.
// ANCHOR_END: description

#### Return Values

// ANCHOR: return-values
Returns up to three values, i.e., source, sourceInfo1 and sourceInfo2. The number of return values depends on the modulation source. See [Modulation Source Types](./Modulation-Source-Types.md) for details.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print modulation sources.

function printSource(source)
    if source.source == ModulationSource.midiControl then
        print("MIDI Ctrl, Controller Number: "..source.info1)
    elseif source.source == ModulationSource.quickControl then
        print("Quick Ctrl, Layer: "..source.info1.name..", QC Index: "..source.info2)
    elseif source.source == ModulationSource.modulationModule then
        print("MIDI Module,  Module: "..source.info1.name..", Output: "..source.info2)
    elseif source.source == ModulationSource.noteExpression then
        print("Note Expression, Custom NE: "..source.info1)
    elseif source.source == ModulationSource.sampleAndHold then
        print("Sample & Hold, Index: "..source.info1)
    else
        print("Standard Modulation, Index: "..source.source)
    end
end
 
-- Get the zone object of the first zone.

zone = this.program:findZones(true)[1]
 
-- Run through all 32 modulation rows of the zone and print source1 if assigned.

for i=1, 32 do
    local modRow = zone:getModulationMatrixRow(i)
    local source1 = {}
    source1.source, source1.info1, source1.info2 = modRow:getSource1()
    if source1.source ~= ModulationSource.unassigned then
        print("Modulation Row "..i..", Source 1:")
        printSource(source1)
    end
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */