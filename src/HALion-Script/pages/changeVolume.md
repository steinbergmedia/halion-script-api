/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# changeVolume

>**changeVolume(noteID, gain, relative, immediateOrDuration)**

## Description

Function to change the volume of a specific note. A gain factor greater than 1.0 amplifies the signal and a gain factor smaller than 1.0 attenuates the signal.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**noteID**|The ID of the note that you want to change.|number|
|**gain**|The absolute gain (relative = ``false``) or the value which is added (relative = ``true``).|number|
|**relative**|The value is added to the current amount if this is set to ``true``. The default is ``false``.|boolean, optional|
|**immediateOrDuration**|Change the value immediately or in the specified duration. Set this to ``true`` to change the value immediately without controller smoothing. Set a duration in milliseconds to change the value with controller smoothing in the specified time. If not set, this setting defaults to ''false'' and the controller smoothing setting in the **Options** editor is used.|boolean or number, optional|

## Example

```lua
-- Attenuate notes between C2 and C4.
local lowKey = 48   -- C2
local highKey = 72  -- C4
local keyRange = highKey - lowKey
function onNote(event)
  if event.note > lowKey then
    local gain = (event.note - lowKey)/keyRange
    local id = postEvent(event)
    changeVolume(id, gain, false, true)
   end
end
```

**See also:** [changeVolumedB](./changeVolumedB.md), [changePan](./changePan.md), [changeTune](./changeTune.md), [changeNoteExpression](./changeNoteExpression.md)