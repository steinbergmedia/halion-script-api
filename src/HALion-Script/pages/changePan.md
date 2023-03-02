/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# changePan

>**changePan(noteID, pan, relative, immediateOrDuration)**

## Description

Function to change the position of a specific note in the panorama.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**noteID**|The ID of the note that you want to change.|number|
|**pan**|The absolute pan position in the range of -1.0 to 1.0 (relative = ``false``) or the value which is added (relative = ``true``).|number|
|**relative**|The value is added to the current amount if this is set to ''true''. The default is ''false''.|boolean, optional|
|**immediateOrDuration**|Change the value immediately or in the specified duration. Set this to ``true`` to change the value immediately without controller smoothing. Set a duration in milliseconds to change the value with controller smoothing in the specified time. If not set, this setting defaults to ``false`` and the controller smoothing setting in the **Options** editor is used.|boolean or number, optional|

## Example

```lua
-- Pan notes depending on the pitch of the MIDI note.
-- E3 == center, E2 == hard left, E4 == hard right
function onNote(event)
  local pan = (event.note - 64) / 12
  local id = postEvent(event)
  changePan(id, pan, false, true)
end
```

**See also:** [changeVolume](./changeVolume.md), [changeVolumedB](./changeVolumedB.md), [changeTune](./changeTune.md), [changeNoteExpression](./changeNoteExpression.md)