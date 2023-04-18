/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getAllocatedMemory

>**getAllocatedMemory()**

## Description

Function to obtain the number of bytes which have been allocated to the script in the memory.

**Available in:** Processor.

## Return Values

Returns the number of bytes which have been allocated to the script in the memory.

## Example

```lua
-- Print the number of bytes which have been allocated to the script in the memory.

function onNote(event)
    print(getAllocatedMemory())
end
```

**See also:** [getUsedMemory](./getUsedMemory.md)