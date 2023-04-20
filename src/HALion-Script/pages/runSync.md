/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# runSync

>**runSync(func, id)**

#### Description

Executes a function in the processor thread. By calling runSync in the controller thread, you can invoke a function that is executed in the processor thread. For example, by calling runSync in a parameter change callback, you can invoke an event function like [playNote](./playNote.md), [releaseVoice](./releaseVoice.md), [controlChange](./controlChange.md), etc. The callback that called runSync is not stopped and continues its execution. The specified function will be exectued in the next audio block. If ``id`` is specified, another call to runSync with the same ID overwrites the previous function if it has not been executed yet. Only the last function with the same ID will be executed in the next audio block.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**func**|The name of the function to be called.|function|
|**id**|If this is specified, another call to runSync with the same ID overwrites the previous function if it has not been executed yet. Only the last function with the same ID will be executed in the next audio block.|variant, optional|

#### Example

```lua
-- Fade all voices, triggered by a script parameter.

defineSlotLocal("noteIDs")
noteIDs = {}
 
function onNote(event)
  local id = postEvent(event)
  table.insert(noteIDs, id)
end
 
function syncFadeAllVoices()
  for i, id in ipairs(noteIDs) do
      fade(id, nil, 0, 1000, true)
  end
  noteIDs = {}
end
 
function fadeAllVoices()
  if fadeVoices then
    runSync(syncFadeAllVoices, 1)
  end
end
 
defineParameter("fadeVoices", "Fade All Voices", false, fadeAllVoices)
```

**See also:**  [runAsync](./runAsync.md), [spawn](./spawn.md), [wait](./wait.md), [waitBeat](./waitBeat.md), [waitForRelease](./waitForRelease.md)