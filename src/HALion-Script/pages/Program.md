/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) / [Element](./Element.md) / [Layer](./Layer.md) /

# Program

The Program class inherits all properties and methods of the [Layer](./Layer.md) class.

---

**On this page:**

[Program Class](#program-class), [Program Constructor](#program-constructor)

---

**List of inherited members:**

#### Layer

{{#include ./_Layer-Inherited-Members.md}}

#### Element

{{#include ./_Element-Inherited-Members.md}}

---

## Classes

### Program Class

#### Description

The [Element](./Element.md) object of the program can be obtained with ``this.program``. It has the following fields.

**Available in:** Controller, Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.instance**|The [Element](./Element.md) object of the plug-in instance.|[Instance](./Instance.md)|
|**.assignedSlots**|An array with the Element objects of the slots to which this program is assigned.|table|

#### Example

```lua
-- Print the name of the plug-in instance.

print(this.program.instance.name)
 
-- Print the name of the first slot to which the program is assigned.

if this.program.assignedSlots[1] then
    print(this.program.assignedSlots[1].name)
end
```

[Jump to Top ](#program)

## Constructors

### Program Constructor

{{#include ./_Program-Constructor-Reference.md:all}}

[Jump to Top ](#program)
