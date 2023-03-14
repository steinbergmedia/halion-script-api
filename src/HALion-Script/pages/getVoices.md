/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getVoices

>**getVoices()**

## Description

Function to retrieve the maximum number of voices of the plug-in instance as set in the **Options** editor.

**Available in:** Processor.

## Return Values

Returns the maximum number of voices of the plug-in instance.

## Example

```lua
-- Print the maximum number of voices.

function onNote(event)
    print("Maximum Number of Voices: "..getVoices())
end
```

**See also:** [getFreeVoices](./getFreeVoices.md), [getUsedVoices](./getUsedVoices.md), [getUsedVoicesOfSlot](./getUsedVoicesOfSlot.md)