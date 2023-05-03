/* ANCHOR: all */

// ANCHOR: function
>**getProgram(index)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the [Program](./Program.md) object of a program in the **Program Table** of the plug-in instance. Before calling this function you must access the [Instance](./Instance.md) object with ``this.program.instance``. The index corresponds to the number of the slot in the **Program Table** where the program is set. The function returns the [Program](./Program.md) object of the program with the specified index.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**index**|The index of the slot in the Program Table where the program is set.|number|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the [Program](./Program.md) object of the program with the specified index.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Print the name of the program in the third slot of the Program Table.

program = this.program.instance:getProgram(3)
print(program.name)
```
// ANCHOR_END: example

/* ANCHOR_END: all */