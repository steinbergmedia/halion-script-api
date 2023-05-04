/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getNoteExpressionProperties

>**getNoteExpressionProperties()**

## Description

Function to access the internal array that manages the appearance of the custom note expressions. In HALion, these are found in the Note Expression section and in Cubase, in the Note Expression section of the Inspector. For example, if your script generates note expression events, you can give the associated custom note expressions meaningful names or you can hide them. The first time you call getNoteExpressionProperties, the returned array will be empty. You change the properites by assigning a table with the fields ``.name`` or ``.block`` to the index of the array that corresponds to the custom note expression. The indices from 4 to 11 correspond to the custom note expressions 1 to 8 (see [Note Expression Types](./Note-Expression-Types.md) for details). The properties defined by this script will override any properties that come later in the processing chain.

>&#10069; The properties of the pre-assigned note expressions volume, pan and tuning cannot be changed

**Available in:** Controller.

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.name**|The name of the custom note expression. By default, HALion automatically creates a name for the custom note expression if it is assigned in the modulation matrix. The name you set with the ``.name`` property and the automatically created name are both displayed. If the ``.block`` property is set to ``true``, only the name set with the ``.name`` property is displayed.|string, optional|
|**.block**|If set to ``true``, the properties that come later in the processing chain will not be evaluated. If no value is specified, this is set to ``false``. If the ``.block`` property is set to ``true`` and the ``.name`` property is not set or ``nil``, the name of the custom note expression will not be displayed in HALion and Cubase.|boolean, optional|


## Return Values

Returns the reference to the internal note expression properties array.

## Example

```lua
ne = getNoteExpressionProperties() -- Get the reference to the note expression properties table.

ne[NoteExpressionType.custom1] = { name = "Reserved", block = true }  -- Displays only 'Reserved'.
ne[NoteExpressionType.custom2] = { block = true }                     -- Hides the note expression.
ne[NoteExpressionType.custom3] = { name = "Test", block = false }     -- Displays 'Test' and auto created names.
```

**See also:** [onNoteExpression](./onNoteExpression.md), [changeNoteExpression](./changeNoteExpression.md), [getNoteExpression](./getNoteExpression.md), [Note Expression Types](./Note-Expression-Types.md)