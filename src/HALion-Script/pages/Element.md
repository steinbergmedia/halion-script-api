/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) /

# Element

The Element class is the base class for the classes [Bus](./Bus.md), [Instance](./Instance.md), [Layer](./Layer.md), [Effect](./Effect.md), [MidiModule](./MidiModule.md), [ModulationMatrixRow](./ModulationMatrixRow.md), [Slot](./Slot.md) and [Zone](./Zone.md).

---

**On this page:**

{{#include ./_Element-Inherited-Members.md}}

---

## Classes

### Element Class

The different types of elements are [Instance](./Instance.md), [Slot](./Slot.md), [Program](./Program.md), [Layer](./Layer.md), [Zone](./Zone.md), [ModulationMatrixRow](./ModulationMatrixRow.md), [MidiModule](./MidiModule.md), [Bus](./Bus.md) and [Effect](./Effect.md). The properties of an Element object are described by the following fields.

**Available in:** Controller, Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.name**|Returns the name of the element.|string|
|**.id**|Returns the unique ID of the element.|string|
|**.type**|Returns the type of the element.|string|
|**.parameterDefinitions**|Returns an array with all [ParameterDefinition](./ParameterDefinition.md) objects of the element.|table|
|**.parent**|Returns the parent element in the Program Tree. This evaluates to ``nil`` if the element is the program.|[Element](./Element.md) or ``nil``|
|**.program**|Returns the program element in the Program Tree.|[Program](./Program.md|
|**.level**|Returns the level in the Program Tree hierarchy. The program equals level 1. Each sublayer adds +1 to the level.|number|

#### Example

```lua
-- Print information about the script module.

print(this.name)
print(this.id)
print(this.type)
print(this.name)
print(this.numParams)
print(this.parent.name)
print(this.program.name)
print(this.level)
 
-- Print the names of all parameters of the parent element.

defs = this.parent.parameterDefinitions
 
for i, def in ipairs(defs) do
    print(def.name)
end
```

[Jump to Top ](#element)

## Methods

### findChildren

{{#include ./_findChildren-Description.md}}

[Jump to Top ](#element)

### getChild

{{#include ./_getChild-Description.md}}

[Jump to Top ](#element)

### getParameter

{{#include ./_getParameter-Description.md}}

[Jump to Top ](#element)

### getParameterDefinition

{{#include ./_getParameterDefinition-Description.md}}

[Jump to Top ](#element)

### getParameterNormalized

{{#include ./_getParameterNormalized-Description.md}}

[Jump to Top ](#element)

### hasParameter

{{#include ./_hasParameter-Description.md}}

[Jump to Top ](#element)

### removeFromParent

{{#include ./_removeFromParent-Description.md}}

[Jump to Top ](#element)

### setName

{{#include ./_setName-Description.md}}

[Jump to Top ](#element)

### setParameter

{{#include ./_setParameter-Description.md}}

[Jump to Top ](#element)

### setParameterNormalized

{{#include ./_setParameterNormalized-Description.md}}

[Jump to Top ](#element)
