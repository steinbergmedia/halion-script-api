/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# changeTune

>**changeTune(noteID, tune, relative, immediateOrDuration)**

## Description

Function to change the tuning of a specific note in semitones.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**noteID**|The ID of the note that you want to change.|number|
|**tune**|The absolute tuning in the range of -120.0 to 120.0 semitones (relative = ``false``) or the value which is added (relative = ``true``).|number
|**relative**|The value is added to the current amount if this is set to ``true``. The default is ``false``.|boolean, optional|
|**immediateOrDuration**|Change the value immediately or in the specified duration. Set this to ``true`` to change the value immediately without controller smoothing. Set a duration in milliseconds to change the value with controller smoothing in the specified time. If not set, this setting defaults to ``false`` and the controller smoothing setting in the **Options** editor is used.|boolean or number, optional|

## Example

```lua
-- Random tune offset per note.
function onNote(event)
  local tune = math.random() * 12 - 6
  local id = postEvent(event)
  changeTune(id, tune, true, true)
end
```

**See also:** [changeVolume](./changeVolume.md), [changeVolumedB](./changeVolumedB.md), [changePan](./changePan.md), [changeNoteExpression](./changeNoteExpression.md)