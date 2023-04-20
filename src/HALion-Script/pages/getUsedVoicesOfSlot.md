/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getUsedVoicesOfSlot

>**getUsedVoicesOfSlot()**

#### Description

Function to obtain the number of used voices of the slot in which a program is loaded.

{{#include _getUsedVoices-note.md}}

**Available in:** Processor.

#### Return Values

Returns the number of used voices of the corresponding slot.

#### Example

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