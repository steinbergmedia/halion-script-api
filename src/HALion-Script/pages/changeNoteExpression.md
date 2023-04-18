/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# changeNoteExpression

>**changeNoteExpression(noteID, type, value, relative, immediateOrDuration)**

## Description

Function to change the note expression of a specific note.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**noteID**|The ID of the note you want to change.|number|
|**type**|The note expression type. It can be determined via names or indices. See [Note Expression Types](./Note-Expression-Types.md) for details.|enum or number|
|**value**|The absolute note expression value in the range of 0.0 to 1.0 (relative = ``false``) or the value that is added (relative = ``true``).|number|
|**relative**|The value is added to the current amount if this is set to ``true``. The default setting is false.|boolean, optional|
|**immediateOrDuration**|Change the value immediately or in the specified duration. Set this to ``true`` to change the value immediately without controller smoothing``.`` Set a duration in milliseconds to change the value with controller smoothing in the specified time. If not set, this setting defaults to ``false`` and the controller smoothing setting in the **Options** editor is used.|boolean or number, optional|

## Example

```lua
-- Transform continuous controllers into note expression.
local ids = {}
 
function onNote(event)
  local id = postEvent(event)
  changeNoteExpression(id, 1, getCC(7)/127, false, true)
  changeNoteExpression(id, 2, getCC(10)/127, false, true)
  changeNoteExpression(id, 3, (getCC(129)/8191) * 0.5 + 0.5, false, true)
  table.insert(ids, id)
  waitForRelease()
  table.remove(ids)
end
 
function onController(event)
  -- volume controller
  if event.controller == 7 then
    for i,v in ipairs(ids) do
        changeNoteExpression(v, NoteExpressionType.volume, event.value/127)
    end
  end
  -- pan controller
  if event.controller == 10 then
    for i,v in ipairs(ids) do
        changeNoteExpression(v, NoteExpressionType.pan, event.value/127)
    end
  end
  -- pitch bend
  if event.controller == 129 then
    for i,v in ipairs(ids) do
        changeNoteExpression(v, NoteExpressionType.tuning, (event.value/8191) * 0.5 + 0.5)
    end
  end
end
```

**See also:** [onNoteExpression](./onNoteExpression.md), [getNoteExpression](./getNoteExpression.md), [changeVolume](./changeVolume.md), [changeVolumedB](./changeVolumedB.md), [changePan](./changePan.md), [changeTune](./changeTune.md), [Note Expression Types](./Note-Expression-Types.md)