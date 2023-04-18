/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getUsedMemory

>**getUsedMemory()**

## Description

Function to obtain the amount of memory that is used by the script.

**Available in:** Processor.

## Return Values

Returns the number of bytes in the memory that are used by the script.

## Example

```lua
-- Print the used memory in bytes.

function onNote(event)
    print(getUsedMemory())
end
```

**See also:** [getAllocatedMemory](./getAllocatedMemory.md)