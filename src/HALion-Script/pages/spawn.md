/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# spawn

>**spawn(func, arg1, arg2, ...)**

#### Description

Calls a Lua function and executes it in a separate, parallel thread.

**Available in:** Controller, Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**func**|The name of the function to be called.|function|
|**arg1, arg2, ...**|The arguments of the function.|optional|

#### Example

```lua
-- Play echos after releasing the note.

function echoNotes(event, echos)
    local duration = getBeatDuration()
    for i=1, echos do
        wait(duration*0.5)
        playNote(event.note+7*i, event.velocity*1/i, duration*0.25)
    end
    print("Spawn function of Note", event.note, "ended at", getTime())
end
 
function onNote(event)
    postEvent(event)
    waitForRelease()
    spawn(echoNotes, event, 3)
    print("Note", event.note, "was released at", getTime())
end
```

**See also:** [runAsync](./runAsync.md), [runSync](./runSync.md), [wait](./wait.md), [waitBeat](./waitBeat.md), [waitForRelease](./waitForRelease.md)