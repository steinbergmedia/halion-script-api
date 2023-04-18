
>**getParameter(nameOrID)**

#### Description

Function to read the current value of a parameter. The parameter can be determined by name or ID.

**Available in:** Controller, Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrID**|The name or ID of the parameter.|string or number|


#### Return Values

Returns the current value of the parameter or nil if the parameter doesn't exist.

#### Example

```lua
-- Print the value of the parent layer's level parameter.

function onLoadIntoSlot()
    print("Level = "..this.parent:getParameter("Level")) -- via name
    print("Level = "..this.parent:getParameter(38)) -- via ID
end
```
