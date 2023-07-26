/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Event Types

## Description

Enumerator to identify the different types of events. See [Event Constructor](./Event-Constructor.md) and [Event](./Event.md) for details.

**Available in:** Processor.

## Event Types

|Index|Name|Description|
|:-|:-|:-|
|1|EventType.noteOn|Note-on events|
|2|EventType.noteOff|Note-off events|
|3|EventType.controller|Continuous controller events|
|4|EventType.noteExpression|Note expression events|
|5|EventType.programChange|Only used for Standard MIDI files|
|6|EventType.noteRetrigger|Note-retrigger events|
|7|EventType.data|System exclusive messages|

## Example

```lua
-- Print the event type.

function printEventType(event)
    if event.type == EventType.noteOn then
        print("Note-on event received!")
    elseif event.type == EventType.noteOff then
        print("Note-off event received!")
    elseif event.type == EventType.controller then
        print("Controller event received!")
    elseif event.type == EventType.noteExpression then
        print("Note Expression event received!")
    elseif event.type == EventType.noteRetrigger then
        print("Note-retrigger event received!")
    elseif event.type == EventType.data then
        print("System exclusive message received!")
    end
end
 
function onNote(event)
    printEventType(event)
    postEvent(event)
end
  
function onRelease(event)
    printEventType(event)
    postEvent(event)
end
   
function onController(event)
    printEventType(event)
    postEvent(event)
end
   
function onNoteExpression(event)
    printEventType(event)
    -- postEvent(event), not needed for note expression.
end

function onRetrigger(event)
    printEventType(event)
    postEvent(event)
end
 
function onData(event)
    printEventType(event)
    postEvent(event)
end
```

**See also:** [Event Constructor](./Event-Constructor.md), [Event](./Event.md)