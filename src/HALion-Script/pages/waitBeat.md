/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# waitBeat

>**waitBeat(beats)**

## Description

Function to suspend the execution of a callback for a specific time. This time is specified in number of beats. One beat equals the length of a quarter note based on the current tempo.

>If the waitBeat function is used in the Controller thread, it operates at a lower rate and is therefore less accurate.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**beats**|Time in number of quarter notes and fractions of it.|number|

## Example

```lua
-- Change tuning cyclically after one beat.

function onNote(event)
  local id = postEvent(event)
  while isNoteHeld() do
    waitBeat(1)
    local tune = math.random() * 12 - 6
    changeTune(id, tune, false, false)
  end
end
```

**See also:** [wait](./wait.md), [waitForRelease](./waitForRelease.md), [spawn](./spawn.md), [runAsync](./runAsync.md), [runSync](./runSync.md)