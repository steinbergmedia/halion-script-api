/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) / [Element](./Element.md) /

# Zone

The Zone class inherits all properties and methods of the [Element](./Element.md) class.

---

**On this page:**

[Zone Class](#zone-class), [Zone Constructor](#zone-constructor), [getModulationMatrixRow](#getmodulationmatrixrow), [getWavetable](#getwavetable), [getOutputBus](#getoutputbus), [setOutputBus](#setoutputbus), [setWavetable](#setwavetable)

---

**List of inherited members:**

#### Element

{{#include ./_Element-Inherited-Members.md}}

---

## Classes

### Zone Class

#### Description

The [Element](./Element.md) object of a zone can be obtained with [findZones](./findZones.md) or [getZone](./getZone.md). It has the following fields.

**Available in:** Controller, Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.keyLow**|The lowest key of the zone.|number|
|**.keyHigh**|The highest key of the zone.|number|
|**.velLow**|The lowest velocity of the zone.|number|
|**.velHigh**|The highest velocity of the zone.|number|

#### Example

```lua
-- Print the key and velocity range of the first zone in the program.

zone = this.program:findZones(true)[1]

print(zone.keyLow)
print(zone.keyHigh)
print(zone.velLow)
print(zone.velHigh)
```

[Jump to Top ](#zone)

## Constructors

### Zone Constructor

{{#include ./_Zone-Constructor-Reference.md:all}}

[Jump to Top ](#zone)

## Methods

### getModulationMatrixRow

{{#include ./_getModulationMatrixRow-Reference.md:all}}

[Jump to Top ](#zone)

### getOutputBus

{{#include ./_getOutputBus-Reference.md:all}}

[Jump to Top ](#zone)

### getWavetable

{{#include ./_getWavetable-Reference.md:all}}

### setOutputBus

{{#include ./_setOutputBus-Reference.md:all}}

[Jump to Top ](#zone)

### setWavetable

{{#include ./_setWavetable-Reference.md:all}}

[Jump to Top ](#zone)
