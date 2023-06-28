/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getNoteDuration

>**getNoteDuration(note)**

## Description

Function to measure the time delta between the last note-on or note-retrigger event of the specified note and the call of this function.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**note**|The note number in the range of 0 to 127.|number|

## Return Values

Returns the time delta in milliseconds.

## Example

```lua
-- Print the time delta between the note-on or the note-retrigger and the note-off.

function onRelease(event)
    postEvent(event)
    print(getNoteDuration(event.note), "ms")
end
```

**See also:** [getBarDuration](./getBarDuration.md), [getBeatDuration](./getBeatDuration.md)