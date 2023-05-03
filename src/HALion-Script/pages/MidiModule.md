/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) / [Element](./Element.md) /

# MidiModule

The MidiModule class inherits all properties and methods of the [Element](./Element.md) class.

---

**On this page:**

[MidiModule Class](#midimodule-class), [MidiModule Constructor](#midimodule-constructor)

---

**List of inherited members:**

#### Element

{{#include ./_Element-Inherited-Members.md}}

---

## Classes

### MidiModule Class

#### Description

The [Element](./Element.md) object of a MIDI module can be obtained with [findMidiModules](./findMidiModules.md) or [getMidiModule](./getMidiModule.md).

**Available in:** Controller, Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.moduleType**|Returns the MIDI module type.|string|

#### Example

```lua
print(this.moduleType)
```

[Jump to Top ](#midimodule)

## Constructors

### MidiModule Constructor

{{#include ./_MidiModule-Constructor-Reference.md:all}}

[Jump to Top ](#midimodule)

