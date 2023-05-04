/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getTime

>**getTime()**

## Description

Function to obtain the time in milliseconds since the initialization of the script.

>&#10069; The function starts to count from 0 ms each time that you reload or reset the script.

**Available in:** Processor.

## Return Values

Returns the time in milliseconds since the initialization of the script.

## Example

```lua
-- Measure the time between subsequent notes.

function onNote(event)
    postEvent(event)
    t2 = getTime()
    if t1 then
        print(string.format("%.3f ms", t2 - t1))
    end
    t1 = t2
end
```