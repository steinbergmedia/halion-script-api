/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getUsedVoicesOfSlot

>**getUsedVoicesOfSlot()**

## Description

Function to obtain the number of used voices of the slot in which a program is loaded.

>If the initiation of a zone and the call of getUsedVoicesOfSlot happen in the same audio block, the voice count which is returned might not be up-to-date. To prevent this, wait for the next audio block before calling this function.

**Available in:** Processor.

## Return Values

Returns the number of used voices of the corresponding slot.

## Example

```lua
-- Print the number of used voices of the slot.

function printUsedVoicesOfSlot()
    wait(20)  -- Wait for 20 ms to avoid calling getUsedVoicesOfSlot in the same audio block.
    print("Number of used voices: "..getUsedVoicesOfSlot())
end
  
function onNote(event)
    postEvent(event)
    spawn(printUsedVoicesOfSlot)
end
```

**See also:** [getVoices](./getVoices.md), [getFreeVoices](./getFreeVoices.md),  [getUsedVoices](./getUsedVoices.md)