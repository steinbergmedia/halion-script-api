/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) / [Element](./Element.md) /

# ModulationMatrixRow

The ModulationMatrixRow class inherits all properties and methods of the [Element](./Element.md) class.

---

**On this page:**

[[_TOC_]]

---

## Classes

### ModulationMatrixRow Class

The [Element](./Element.md) object of the modulation matrix row can be obtained with [getModulationMatrixRow](./getModulationMatrixRow.md). It has the following fields.

**Available in:** Controller, Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.rowNumber**|Returns the index of the modulation matrix row.|number|
|**.zone**|Returns the [Zone](./Zone.md) object of the zone that the modulation matrix row belongs to.|[Zone](./Zone.md)|

#### Example

```lua
-- Get the element object of the first zone in the program.

zone = this.program:findZones(true)[1]

-- Get the element object of the first modulation matrix row.

modRow = zone:getModulationMatrixRow(1)

-- Print the zone name and row number of the modulation matrix row.

print(modRow.zone.name)
print(modRow.rowNumber)
```

[Jump to Top ](#modulationmatrixrow)

## Methods

### getSource1

{{#include ./_getSource1-Description.md}}

[Jump to Top ](#modulationmatrixrow)

### getSource2

{{#include ./_getSource2-Description.md}}

[Jump to Top ](#modulationmatrixrow)

### setSource1

{{#include ./_setSource1-Description.md}}

[Jump to Top ](#modulationmatrixrow)

### setSource2

{{#include ./_setSource2-Description.md}}

[Jump to Top ](#modulationmatrixrow)
