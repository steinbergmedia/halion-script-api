/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) /

# ParameterDefinition

The ParameterDefinition class describes the properties of parameters.

---

**On this page:**

[ParameterDefinition Class](#parameterdefinition-class), [getDisplayString](#getdisplaystring)

---

## Classes

### ParameterDefinition Class

#### Description

The ParameterDefinition object describes the properties of a parameter. It has the following fields.

**Available in:** Controller, Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.name**|	Returns the name of the parameter.|string|
|**.longName**|	Returns the long name of the parameter.|string|
|**.id**|	Returns the ID of the parameter.|number|
|**.type**|	Returns the data type of the parameter.|string|
|**.default**|	Returns the default value of the parameter.|number|
|**.min**|	Returns the minimum value of the parameter.|number|
|**.max**|	Returns the maximum value of the parameter.|number|
|**.readOnly**|	Returns ``true`` if the value of the parameter is read-only and ``false`` if it is not.|boolean|
|**.writeAlways**|	Returns ``true`` if the value is always set and ``false`` if it is not. If this returns ``true``, the parameter sends a changed message even if the actual value did not change when it was set.|boolean|
|**.automatable**|Returns ``true`` if the parameter can be automated and ``false`` if it cannot.|boolean|
|**.persistent**|Returns ``true`` if the parameter restores from the VST preset and ``false`` if it does not.|boolean|
|**.unit**|Returns the unit of the parameter value, for example, dB.|string|

```lua
-- Print the parameter definition with corresponding data type of the parent layer's level parameter.

function onLoadIntoSlot()
 
    local def = this.parent:getParameterDefinition("Level")
 
    print("Name = "..def.name..", "..type(def.name))
    print("Long Name = "..def.longName..", "..type(def.longName))
    print("ID = "..def.id..", "..type(def.id))
    print("Type = "..def.type..", "..type(def.type))
    print("Default = "..def.default..", "..type(def.default))
    print("Min = "..def.min..", "..type(def.min))
    print("Max = "..def.max..", "..type(def.max))
    print("Read Only = "..tostring(def.readOnly)..", "..type(def.readOnly))
    print("Write Always = "..tostring(def.writeAlways)..", "..type(def.writeAlways))
    print("Automatable = "..tostring(def.automatable)..", "..type(def.automatable))
    print("Persistent = "..tostring(def.persistent)..", "..type(def.persistent))
    print("Unit = "..def.unit..", "..type(def.unit).."\n")
 
end
```
[Jump to Top ](#parameterdefinition)

## Methods

### getDisplayString

{{#include ./_getDisplayString-Description.md}}

[Jump to Top ](#parameterdefinition)
