/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# runAsync

>**runAsync(func, arg1, arg2, ...)**

#### Description

Executes a function in the controller thread. By calling runAsync in the processor thread, you can invoke a function that is executed in the controller thread. The execution of runAsync takes at least one audio block, or longer, depending on the function which was called. The callback which called runAsync is put on hold until the function has completed. Please be aware of this when using runAsync.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**func**|The name of the function to be called.|function|
|**arg1, arg2, ...**|The arguments of the function.|optional|

#### Example

```lua
-- Color held keys.

keyOnColor = 5
keys = getKeyProperties()
 
function setColorOfKey(event, keyColor)
  if keyColor then
    keys[event.note] = { color = keyColor }
  else
    keys[event.note].color = nil
  end
  print(event.note)
end
   
function onNote(event)
  postEvent(event) 
  runAsync(setColorOfKey, event, keyOnColor)
  print("onNote")
end
    
function onRelease(event)
  postEvent(event)
  runAsync(setColorOfKey, event)
  print("onRelease")
end
```

**See also:** [runSync](./runSync.md), [spawn](./spawn.md), [wait](./wait.md), [waitBeat](./waitBeat.md), [waitForRelease](./waitForRelease.md)