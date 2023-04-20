/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) / [Element](./Element.md) /

# Bus

The Bus class inherits all properties and methods of the [Element](./Element.md) class.

---

**On this page:**

[Bus Class](#bus-class), [Bus Constructor](#bus-constructor), [findEffects](#findeffects), [getEffect](#geteffect), [insertEffect](#inserteffect), [appendEffect](#appendeffect), [removeEffect](#removeeffect), [getOutputBus](#getoutputbus), [setOutpuBus](#setoutputbus)

---

**List of inherited members:**

#### Element

{{#include ./_Element-Inherited-Members.md}}

---

## Classes

### Bus Class

#### Description

The [Element](./Element.md) object of a bus can be obtained with [findBusses](./findBusses.md) or [getBus](./getBus.md). It has the following fields.

**Available in:** Controller, Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.isAuxBus**|Returns true if this is an aux bus and false if it is not.|boolean|
|**.auxNumber**|The number of the corresponding aux bus.|number|
|**.numChannels**|The number of output channels of the bus.|number|
|**.active**|Returns true if the bus is active and false if it is not active.|boolean|
|**.bypassMask**|Determines if a bus follows the global inserts and Aux bypass buttons. See Bypass Masks for details.|number|

#### Example

```lua
-- Print the names of the active output busses of the plug-in.

busses = this.program.instance:findBusses()
 
for i, bus in ipairs(busses) do
    if bus.active then
        print(bus.name)
    end
end
```

[Jump to Top ](#bus)

## Constructors

### Bus Constructor

{{#include ./_Bus-Constructor-Description.md}}

[Jump to Top ](#bus)

## Methods

### findEffects

{{#include ./_findEffects-Description.md}}

[Jump to Top ](#bus)

### getEffect

{{#include ./_getEffect-Description.md}}

[Jump to Top ](#bus)

### insertEffect

{{#include ./_insertEffect-Description.md}}

[Jump to Top ](#bus)

### appendEffect

{{#include ./_appendEffect-Description.md}}

[Jump to Top ](#bus)

### removeEffect

{{#include ./_removeEffect-Description.md}}

[Jump to Top ](#bus)

### getOutputBus

{{#include ./_getOutputBus-Description.md}}

[Jump to Top ](#bus)

### setOutputBus

{{#include ./_setOutputBus-Description.md}}

[Jump to Top ](#bus)
