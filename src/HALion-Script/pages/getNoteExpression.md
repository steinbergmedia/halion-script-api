/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getNoteExpression

>**getNoteExpression(noteID, type)**

#### Description

Function to read the current value of a note expression of a specific note.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**noteID**|The note ID of the associated note.|number|
|**type**|The note expression type. It can be determined via names or indices. See [Note Expression Types](./Note-Expression-Types.md) for a description of the types, names and indices.|enum or number|

#### Return Values

Returns the current value of the note expression determined by the arguments. The function returns -1 if the value of the note expression has not been set yet.

#### Example

```lua
-- Print the current value of the volume and pan note expressions.

function onNote(event)
    local id = postEvent(event)
    changeNoteExpression(id, 1, 0.5, false, true)
    print(getNoteExpression(id, NoteExpressionType.volume))
    print(getNoteExpression(id, NoteExpressionType.pan))
end
```

**See also:** [onNoteExpression](./onNoteExpression.md), [changeNoteExpression](./changeNoteExpression.md), [Note Expression Types](./Note-Expression-Types.md)