/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getFreeVoices

>**getFreeVoices()**

## Description

Function to retrieve the number of free voices of the plug-in instance.

>&#10069; If the initiation of a zone and the call of getFreeVoices happen in the same audio block, the voice count which is returned might not be up-to-date. To prevent this, wait for the next audio block before calling this function.

**Available in:** Processor.

## Return Values

Returns the number of free voices of the plug-in instance.

## Example

```lua
-- Print the number of free voices of the plug-in.

function printFreeVoices()
    wait(20)  -- Wait for 20 ms to avoid calling getFreeVoices in the same audio block.
    print("Number of free voices: "..getFreeVoices())
end
 
function onNote(event)
    postEvent(event)
    spawn(printFreeVoices)
end
```

**See also:** [getVoices](./getVoices.md), [getUsedVoices](./getUsedVoices.md), [getUsedVoicesOfSlot](./getUsedVoicesOfSlot.md)