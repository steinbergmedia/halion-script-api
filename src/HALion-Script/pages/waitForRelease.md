/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# waitForRelease

>**waitForRelease()**

## Description

Function to suspend the execution of the [onNote](./onNote.md) callback until the note that called [onNote](./onNote.md) gets released either by a corresponding note-off or sustain pedal off.

**Available in:** Processor.

## Example

```lua
-- Print the note length in milliseconds.

function onNote(event)
    postEvent(event)
    local noteOnTime = getTime()
    waitForRelease()
    local noteOffTime = getTime()
    local noteLength = noteOffTime - noteOnTime
    print(noteLength.." ms")
end
```

**See also:** [wait](./wait.md), [waitBeat](./waitBeat.md), [spawn](./spawn.md), [runAsync](./runAsync.md), [runSync](./runSync.md)