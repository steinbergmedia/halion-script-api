/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getProgram

>**getProgram(index)**

## Description

Function to retrieve the [Program](./Program.md) object of a program in the **Program Table** of the plug-in instance. Before calling this function you must access the [Instance](./Instance.md) object with ``this.program.instance``. The index corresponds to the number of the slot in the **Program Table** where the program is set. The function returns the [Program](./Program.md) object of the program with the specified index.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**index**|The index of the slot in the Program Table where the program is set.|number|

## Return Values

Returns the [Program](./Program.md) object of the program with the specified index.

## Example

```lua
-- Print the name of the program in the third slot of the Program Table.

program = this.program.instance:getProgram(3)
print(program.name)
```

**See also:** [setProgram](./setProgram.md), [Program](./Program.md)