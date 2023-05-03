/* ANCHOR: all */

// ANCHOR: function
>**setName(name)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to change the name of an element in the **Program Tree**.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**name**|The new name for the element.|string|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Print current name of the script module.

print(this.name)

-- Set the name of the script module to "My Element".

this:setName("My Element")

-- Print the new name of the script module.

print(this.name)
```
// ANCHOR_END: example

/* ANCHOR_END: all */