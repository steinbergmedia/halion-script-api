/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getBarDuration

>**getBarDuration()**

## Description

Function to obtain the duration of one bar in milliseconds.

**Available in:** Processor.

## Return Values

Returns the duration of one bar in milliseconds based on the current time signature and tempo. If no time signature or tempo are available, this function returns the value -1.

## Example

```lua
-- Limit the note length to one bar.

function onNote(event)
  playNote(event.note, event.velocity, getBarDuration())
end

function onRelease(event)
  -- postEvent(event), not used.
end
```

**See also:** [getBeatDuration](./getBeatDuration.md), [getNoteDuration](./getNoteDuration.md)