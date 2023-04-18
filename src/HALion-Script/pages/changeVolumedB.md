/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# changeVolumedB

>**changeVolumedB(noteID, gain_dB, relative, immediateorDuration)**

## Description

Function to change the volume of a specific note in decibels (dB). Positive values amplify the signal and negative values attenuate the signal.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**noteID**|The ID of the note that you want to change.|number|
|**gain_dB**|The absolute gain in dB (relative = ``false``) or the value which is added (relative = ``true``).|number|
|**relative**|The value is added to the current amount if  this is set to ``true``. The default is ``false``.|boolean, optional|
|**immediateOrDuration**|Change the value immediately or in the specified duration. Set this to ``true`` to change the value immediately without controller smoothing. Set a duration in milliseconds to change the value with controller smoothing in the specified time. If not set, this setting defaults to ``false`` and the controller smoothing setting in the **Options** editor is used.|boolean or number, optional|

## Example

```lua
-- Apply velocity with a dynamic range of 40dB.
function onNote(event)
  local id = postEvent(event)
  local gain_dB = (event.velocity/127) * 40 - 40
  changeVolumedB(id, gain_dB, false, true)
end
```

**See also:** [changeVolume](./changeVolume.md), [changePan](./changePan.md), [changeTune](./changeTune.md), [changeNoteExpression](./changeNoteExpression.md)