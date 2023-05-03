/* ANCHOR: all */

// ANCHOR: function
>**getParameterDefinition(nameOrID)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the [ParameterDefinition](./ParameterDefinition.md) object for a parameter. The parameter can be determined by name or ID. The [ParameterDefinition](./ParameterDefinition.md) object describes the properties of a parameter.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the [ParameterDefinition](./ParameterDefinition.md) object for the specified parameter.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print the parameter definition with corresponding
-- data type of the parent layer's level parameter.

function onLoadIntoSlot()
  
    local def = this.parent:getParameterDefinition("Level")
  
    print("Name = "..def.name..", "..type(def.name))
    print("ID = "..def.id..", "..type(def.id))
    print("Type = "..def.type..", "..type(def.type))
    print("Default = "..def.default..", "..type(def.default))
    print("Read Only = "..tostring(def.readOnly)..", "..type(def.readOnly))
    print("Min = "..def.min..", "..type(def.min))
    print("Max = "..def.max..", "..type(def.max))
    print("Unit = "..def.unit..", "..type(def.unit).."\n")
  
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */