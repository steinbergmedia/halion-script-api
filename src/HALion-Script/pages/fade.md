/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# fade

>**fade(noteID, startValue, targetValue, duration, killVoice)**

## Description

Function to fade the volume of a specific note. The fade is performed from the start to the target value with the specified duration in milliseconds and affects all voices that are triggered by the note. You can start a fade from the current value of a running fade by setting the start value to ``nil``. You can kill the triggered voices if the target value is reached by setting ``killVoice`` to ``true``. The fade is applied in addition to any changes from [changeVolume](./changeVolume.md), [changeVolumedB](./changeVolumedB.md) and [changeNoteExpression](./changeNoteExpression.md).

>&#10069; If you start a fade from the current value of a running fade that has not reached its target value yet, the duration of this fade will be shorter. See [Example 2](#example-2) for details.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**noteID**|The ID of the note you want to fade.|number|
|**startValue**|The start value of the fade in the range of 0 to 1.0. Set this to ``nil`` to start the fade from the current value of a running fade.|number or ``nil``|
|``targetValue``|The target value of the fade in the range of 0 to 1.0.|number|
|**duration**|The length of the fade in milliseconds. The target value is set instantaneously if this is set to <= 0.|number|
|**killVoice**|Set this to ``true`` to kill the note when the target value is reached. The default is ``false``.|boolean|

## Example 1

```lua
-- Simple fade out with kill voice.

function onNote(event)
    id = playNote(event.note, 100, 0) -- The fades affect all voices that are triggered by this note.
    fade(id, nil, 0.0, 1000, true)    -- Start to fade out.
end
function onRelease(event)
    -- postEvent(event), not used.
end
```
## Example 2

```lua
-- Play note, then fade out and in and kill the triggered voices.

function onNote(event)
  id = playNote(event.note, 100, 0) -- The fades affect all voices that are triggered by this note.
  fade(id, 1.0, 0.0, 1000)          -- Start to fade out.
  wait(500)                         -- Wait for 500 ms, which is only half of the fade out.
  fade(id, nil, 1.0, 1000, true)    -- The fade in is only 500 ms long, because it has to go only half of the distance.
end
 
function onRelease(event)
    -- postEvent(event), not used.
end
```

**See also:** [changeVolume](./changeVolume.md), [changeVolumedB](./changeVolumedB.md), [changePan](./changePan.md), [changeTune](./changeTune.md), [changeNoteExpression](./changeNoteExpression.md)