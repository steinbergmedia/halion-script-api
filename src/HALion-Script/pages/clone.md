/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# clone

>**clone(object)**

## Description

Function to create a copy of the specified object. If you want to modify an object, and you want to keep the original object, you can clone the object before modifying it. The allowed objects are [Bus](./Bus.md), [Effect](./Effect.md), [Event](./Event.md), [Layer](./Layer.md), [MidiModule](./MidiModule.md), [Program](./Program.md) and [Zone](./Zone.md). Event objects can be cloned in the processor or the controller thread. All other objects can only be cloned in the controller thread.

>If you clone an event, the ID of the copied event will be -1, because the event has not been played yet. To retrieve an ID, use [postEvent](./postEvent.md) or [playNote](./playNote.md).

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|The allowed objects are [Bus](./Bus.md), [Effect](./Effect.md), [Event](./Event.md), [Layer](./Layer.md), [MidiModule](./MidiModule.md), [Program](./Program.md) and [Zone](./Zone.md).|object|

### Return Values

Returns a copy of the specified object.

## Example

```lua
-- Create a copy of the event and transpose it.
function onNote(event)
    eventCopy = clone(event)
    eventCopy.note = event.note + 12
    local id = postEvent(eventCopy)
    waitForRelease()
    releaseVoice(id)
end
-- Create a copy of the program.
function cloneProgram()
  local prg = this.parent
  assert(type(prg) == 'Program')
  local copy_prg = clone(prg)
  assert(type(copy_prg) == 'Program')
  assert(#(copy_prg:findZones(true)) == #(prg:findZones(true)))
end
 
cloneProgram()
```

**See also:** [Bus Constructor](./Bus-Constructor.md), [Effect Constructor](./Effect-Constructor.md), [Event Constructor](./Event-Constructor.md), [Layer Constructor](./Layer-Constructor.md), [MidiModule Constructor](./MidiModule-Constructor.md), [Program Constructor](./Program-Constructor.md), [Zone Constructor](./Zone-Constructor.md)