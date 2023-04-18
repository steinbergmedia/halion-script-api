/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getUsedVoices

>**getUsedVoices()**

## Description

Function to obtain the number of used voices of the plug-in instance.

>
If the initiation of a zone and the call of getUsedVoices happen in the same audio block, the voice count which is returned might not be up-to-date. To prevent this, wait for the next audio block before calling this function.

**Available in:** Processor.

## Return Values

Returns the number of used voices of the plug-in instance.

## Example

```lua
-- Print the number of used voices of the plug-in.

function printUsedVoices()
    wait(20)  -- Wait for 20 ms to avoid calling getUsedVoices in the same audio block.
    print("Number of used voices: "..getUsedVoices())
end
  
function onNote(event)
    postEvent(event)
    spawn(printUsedVoices)
end
```

**See also:**  [getVoices](./getVoices.md), [getFreeVoices](./getFreeVoices.md), [getUsedVoicesOfSlot](./getUsedVoicesOfSlot.md)