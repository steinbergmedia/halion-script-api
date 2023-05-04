/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getBeatDuration

>**getBeatDuration()**

## Description

Function to obtain the duration of one beat in milliseconds.

**Available in:** Processor.

## Return Values

Returns the duration of one beat in milliseconds. The duration of one beat equals the length of a quarter note based on the current tempo. If no tempo information is available, this function returns the value -1.

## Example

```lua
-- Play notes with a fixed length of one beat.

function onNote(event)
  playNote(event.note, event.velocity, getBeatDuration())
end
```

**See also:** [getBarDuration](./getBarDuration.md), [getNoteDuration](./getNoteDuration.md)