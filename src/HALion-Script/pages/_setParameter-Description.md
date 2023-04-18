
>**setParameter(nameOrID, value)**

#### Description

Function to set the value of a parameter. The parameter can be determined by name or ID. The function will have no effect if the parameter does not exist.

**Available in:** Controller, Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|
|**value**|The value that you want to set.|The new value must match the data type of the parameter.|

#### Example

```lua
-- Set the value of the Level parameter of the parent layer.
function onLoadIntoSlot()
    this.parent:setParameter("Level", 0) -- Set via name.
    this.parent:setParameter(38, 0) -- Set via ID.
end
```
