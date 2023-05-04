/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onNoteExpression

>**onNoteExpression(event)**

## Description

This callback function is called when the script module receives a note expression event.

>&#10069; Note expression events are always processed by the engine, regardless of whether the event is posted or not. Therefore, the use of [postEvent](./postEvent.md) is not necessary.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|[Event](./Event.md) object of the type noteExpression.|[Event](./Event.md)|

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of event (4 = noteExpression). See [Event Types](./Event-Types.md) for details.|number|
|**.id**|The ID of the associated note-on event.|number|
|**.noteExpressionType**|The type of note expression event. See [Note Expression Types](./Note-Expression-Types.md) for details.|number|
|**.value**|The note expression value in the range of 0 to 1.0.|number|

## Example

```lua
-- Change note expression for the root note and a generated note.

local ids = {}
 
function onNote(event)
  local id = postEvent(event)
  ids[id] = playNote(event.note + 7, event.velocity)
  waitForRelease()
  ids[id] = nil
end
 
function onNoteExpression(event)
  if ids[event.id] then
    changeNoteExpression(ids[event.id], event.noteExpressionType, event.value)
  end
  -- postEvent(event) is not required for onNoteExpression.
end
```

**See also:** [changeNoteExpression](./changeNoteExpression.md), [getNoteExpression](./getNoteExpression.md), [Note Expression Types](./Note-Expression-Types.md)