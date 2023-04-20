/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Note Expression Types

#### Description

Enumerator to identify the different note expression types.

>&#10069; The note expression types volume, pan and tuning are pre-assigned internally and respond immediately. The custom note expression types must be assigned manually in the modulation matrix before they can be used.

**Available in:** Processor.

#### Note Expression Types

|Index|Name|
|:-|:-|
|1|NoteExpressionType.volume|
|2|NoteExpressionType.pan|
|3|NoteExpressionType.tuning|
|4|NoteExpressionType.custom1|
|5|NoteExpressionType.custom2|
|6|NoteExpressionType.custom3|
|7|NoteExpressionType.custom4|
|8|NoteExpressionType.custom5|
|9|NoteExpressionType.custom6|
|10|NoteExpressionType.custom7|
|11|NoteExpressionType.custom8|

#### Example

```lua
-- Detect the type of note expression.

function onNoteExpression(event)
    if event.noteExpressionType == NoteExpressionType.volume then
        print('Note Expression of type "Volume" received!')
    elseif event.noteExpressionType == NoteExpressionType.pan then
        print('Note Expression of type "Pan" received!')
    elseif event.noteExpressionType == NoteExpressionType.tuning then
        print('Note Expression of type "Tuning" received!')
    elseif event.noteExpressionType > 3 then
        print('Note Expression of type "Custom" received!')
    end
end
```

**See also:** [onNoteExpression](./onNoteExpression.md), [changeNoteExpression](./changeNoteExpression.md), [getNoteExpression](./getNoteExpression.md), [getNoteExpressionProperties](./getNoteExpressionProperties.md)