/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onInit

>**onInit()**

## Description

This callback function is called after executing any global statements and the [onLoadIntoSlot](./onLoadIntoSlot.md) callback function. It is the first callback function that is called when the processor thread is initialized. You can use this function to initialize variables with information from the context, for example.

>&#10069; The program must be loaded in the Slot Rack and contain at least one zone. Otherwise, onInit won't be called.

**Available in:** Processor.

## Example

```lua
-- Print the time signature and tempo of the host software.

function onInit()
    num, denom = getTimeSignature()
    tempo = getTempo()
    print(num.."/"..denom) 
    print(tempo.." BPM")
end
```

**See also:** [onLoadIntoSlot](./onLoadIntoSlot.md)