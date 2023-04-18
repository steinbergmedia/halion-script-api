/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getProcessedSamples

>**getProcessedSamples()**

## Description

Function to obtain the number of processed samples since the initialization of the plug-in.

**Available in:** Processor.

## Return Values

Returns the number of processed samples since the initialization of the plug-in.

## Example

```lua
-- Measure the number of processed samples between subsequent notes.

function onNote(event)
    postEvent(event)
    s2 = getProcessedSamples()
    if s1 then
        print(string.format("%.f samples", s2 - s1))
    end
    s1 = s2
end
```