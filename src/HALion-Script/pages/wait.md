/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# wait

>**wait(ms)**

## Description

Function to suspend the execution of a callback for a specific time in milliseconds.

>If the wait function is used in the Controller thread, it operates at a lower rate and is therefore less accurate.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**ms**|Time in ms.|number|

## Example

```lua
-- Delay notes which have not been released for 1000 ms.

local initTime = getTime()
local releaseTime = {}
 
function onNote(event)
  local noteOnTime = getTime()
  wait(1000)
  if noteOnTime > (releaseTime[event.note] or initTime) then
    postEvent(event)
  end
end
 
function onRelease(event)
  releaseTime[event.note] = getTime()
  postEvent(event)
end
```

**See also:** [waitBeat](./waitBeat.md), [waitForRelease](./waitForRelease.md), [spawn](./spawn.md), [runAsync](./runAsync.md), [runSync](./runSync.md)