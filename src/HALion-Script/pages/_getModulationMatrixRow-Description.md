>**getModulationMatrixRow(rowNumber)**

#### Description

Function to obtain the [ModulationMatrixRow](./ModulationMatrixRow.md) object of the specified modulation matrix row. The modulation matrix row is determined by the [Zone](./Zone.md) object of the zone and the index of the modulation matrix row.

**Available in:** Controller, Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**rowNumber**|The index of the modulation matrix row in the range from 1 to 32.|number|

#### Return Values

The [ModulationMatrixRow](./ModulationMatrixRow.md) object of the specified modulation matrix row.

#### Example

```lua
-- Get the element object of the first zone in the program.

zone = this.program:findZones(true)[1]

-- Get the element object of the first modulation matrix row.

modRow = zone:getModulationMatrixRow(1)

-- Print the row number of the specified modulation matrix row.

print(modRow.rowNumber)
```
