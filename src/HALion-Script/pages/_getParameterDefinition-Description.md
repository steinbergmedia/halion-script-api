>**getParameterDefinition(nameOrID)**

#### Description

Function to retrieve the [ParameterDefinition](./ParameterDefinition.md) object for a parameter. The parameter can be determined by name or ID. The [ParameterDefinition](./ParameterDefinition.md) object describes the properties of a parameter.

**Available in:** Controller, Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|

#### Return Values

Returns the [ParameterDefinition](./ParameterDefinition.md) object for the specified parameter.

#### Example

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
