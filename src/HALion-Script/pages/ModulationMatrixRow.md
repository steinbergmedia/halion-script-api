/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) / [Element](./Element.md) /

# ModulationMatrixRow

The ModulationMatrixRow class inherits all properties and methods of the [Element](./Element.md) class.

---

**On this page:**

[ModulationMatrixRow Class](#modulationmatrixrow-class), [getSource1](#getsource1), [getSource2](#getsource2), [setSource1](#setsource1),[setSource2](#setsource2)

---

**List of inherited members:**

#### Element

{{#include ./_Element-Inherited-Members.md}}

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

{{#include ./_getSource1-Reference.md:all}}

[Jump to Top ](#modulationmatrixrow)

### getSource2

{{#include ./_getSource2-Reference.md:all}}

[Jump to Top ](#modulationmatrixrow)

### setSource1

{{#include ./_setSource1-Reference.md:all}}

[Jump to Top ](#modulationmatrixrow)

### setSource2

{{#include ./_setSource2-Reference.md:all}}

[Jump to Top ](#modulationmatrixrow)
