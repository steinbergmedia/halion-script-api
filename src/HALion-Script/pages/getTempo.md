/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getTempo

>**getTempo()**

## Description

Function to read the tempo of the host software.

**Available in:** Processor.

## Return Values

Returns the current tempo in beats per minute (BPM). If no tempo information is available, this function returns the value -1.

## Example

```lua
-- Print the playing speed of subsequent notes in percentage of the host tempo.

local T = {}
function onNote(event)
    postEvent(event)
    T[2] = getTime()
    if T[1] ~= nil then
        speedInPercent = 60000 / (T[2] - T[1]) / getTempo() * 100
        print(string.format("%.1f %s", speedInPercent, "%"))
    end
    T[1] = T[2]
end
```

**See also:** [getTimeSignature](./getTimeSignature.md)