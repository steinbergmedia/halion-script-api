/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) / [Element](./Element.md) /

# Effect

The Effect class inherits all properties and methods of the [Element](./Element.md) class.

---

**On this page:**

[Effect Class](#effect-class), [Effect Constructor](#effect-constructor)

---

**List of inherited members:**

#### Element

{{#include ./_Element-Inherited-Members.md}}

---

## Classes

### Effect Class

#### Description

The [Element](./Element.md) object of an effect can be obtained with [findEffects](./findEffects.md) or [getEffect](./getEffect.md). It has the following fields.

**Available in:** Controller, Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.moduleType**|Returns the effect type.|string|
|**.bypassMask**|Determines if an effect follows the global inserts and Aux bypass buttons. See [Bypass Masks](./Bypass-Masks.md) for details.|number|

#### Example

```lua
effects = this.program:findEffects(true)

for i , effect in ipairs(effects) do
    print(effect.moduleType)
end
```

[Jump to Top ](#effect)

## Constructors

### Effect Constructor

{{#include ./_Effect-Constructor-Reference.md:all}}

[Jump to Top ](#effect)
