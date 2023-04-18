
>**setParameterNormalized(nameOrID, value)**

#### Description

Function to set the value of a parameter in the normalized range from 0 to 1.0. The parameter can be determined by name or ID. This function has no effect if the parameter does not exist or if the value is of the type string.

**Available in:** Controller, Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|
|**value**|The value you want to set in the normalized range from 0 to 1.0.|number|

#### Example

```lua
-- Set the normalized value of the parent layer's level parameter.

function onLoadIntoSlot()
    this.parent:setParameterNormalized("Level", 0.5) -- set via name
    this.parent:setParameterNormalized(38, 0.5) -- set via ID
end
```
