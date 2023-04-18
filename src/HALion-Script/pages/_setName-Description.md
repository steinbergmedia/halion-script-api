
>**setName(name)**

#### Description

Function to change the name of an element in the **Program Tree**.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**name**|The new name for the element.|string|

#### Example

```lua
-- Print current name of the script module.
print(this.name)
-- Set the name of the script module to "My Element".
this:setName("My Element")
-- Print the new name of the script module.
print(this.name)
```
