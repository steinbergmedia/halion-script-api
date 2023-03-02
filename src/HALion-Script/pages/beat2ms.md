/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# beat2ms

>**beat2ms(beats)**

## Description

Function to convert a number of beats to the equivalent duration in milliseconds. One beat equals a quarter note. The current tempo is taken into account.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**beats**|The desired duration in number of beats and fractions of it.|number|

## Return Values

Returns the specified number of beats (quarter notes) as duration in milliseconds.

## Example

```lua
-- Print the position in the current bar in milliseconds when triggering a note.
function onNote(event)
    posInBar = getBeatTimeInBar()
    if (posInBar ~= -1) then       
        posInBarMs = beat2ms(posInBar)
        print(string.format("%.3f ms", posInBarMs))
    else
        print("Playback is stopped.")
    end
end
```

**See also:** [ms2beat](./ms2beat.md),  [ms2samples](./ms2samples.md), [samples2ms](./samples2ms.md)