/* ANCHOR: all */

// ANCHOR: function
>**getModulationMatrixRow(rowNumber)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to obtain the [ModulationMatrixRow](./ModulationMatrixRow.md) object of the specified modulation matrix row. The modulation matrix row is determined by the [Zone](./Zone.md) object of the zone and the index of the modulation matrix row.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**rowNumber**|The index of the modulation matrix row in the range from 1 to 32.|number|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
The [ModulationMatrixRow](./ModulationMatrixRow.md) object of the specified modulation matrix row.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Get the element object of the first zone in the program.

zone = this.program:findZones(true)[1]

-- Get the element object of the first modulation matrix row.

modRow = zone:getModulationMatrixRow(1)

-- Print the row number of the specified modulation matrix row.

print(modRow.rowNumber)
```
// ANCHOR_END: example

/* ANCHOR_END: all */