/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getUsedVoices

>**getUsedVoices()**

#### Description

Function to obtain the number of used voices of the plug-in instance.

{{#include _getUsedVoices-note.md}}

**Available in:** Processor.

#### Return Values

Returns the number of used voices of the plug-in instance.

#### Example

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