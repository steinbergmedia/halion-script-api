/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# printRaw

>**printRaw(value1, value2, ...)**

#### Description

Receives any number of arguments and prints their values to the output window of the script module. In contrast to Lua's print function, printRaw does not insert a space character after every value and does not add a line feed on the end.

**Available in:** Controller, Processor.

#### Arguments

|Argument|Description|
|:-|:-|
|**value1, value2, ...**|The values to be printed. Multiple arguments must be separated with commas.|

#### Example

```lua
-- Print valriables a and b to the output window using printRaw.

function onInit()
    a = 10
    b = 20
    printRaw("Variable a is", a)
    printRaw("Variable b is", b)
end
```
**Output Messages**

```lua
Variable a is10Variable b is20
```
