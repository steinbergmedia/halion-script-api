/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# playNote

>**playNote(note, velocity, duration, layerOrZone, volume, pan, tune)**

## Description

Function to generate note events.

* If ``duration`` is -1, the generated note plays for as long as the key that called playNote is held.
* If ``duration`` is greater 0, the note plays for as long as the key is held, with the maximum duration specified in milliseconds.
* If ``duration`` is 0, playNote generates only the note-on event. The release can be managed manually with [onRelease](./onRelease.md) or with [releaseVoice](./releaseVoice.md) and the ID returned by playNote.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**note**|The note number of the note in the range of 0 to 127.|number|
|**velocity**|The velocity of the note in the range of 0 to 127.|number|
|**duration**|The length of the note in milliseconds. The default is -1.|number, optional|
|**layerOrZone**|The layer or zone to receive the note. Only elements that come after the script module are addressable. The default is nil (all layers).|[Layer](./Layer.md) or [Zone](./Zone.md), optional|
|**volume**|The initial volume in the range of 0 to 1.0. The default is 1.0.|number, optional|
|**pan**|The initial pan position in the range of -1.0 to 1.0. The default is 0.|number, optional|
|**tune**|The initial tuning in the range of -120.0 to 120.0. The default is 0.|number, optional|

## Return Values

Returns the note ID of the generated note.

## Example

```lua
-- Play a major scale with each note.

local majorScaleIntervals = { 0, 2, 4, 5, 7, 9, 11, 12 }
 
function onNote(event)
  for index, interval in ipairs(majorScaleIntervals) do
      local id = playNote(event.note + interval, event.velocity, 0)
      wait(getBeatDuration() * 0.5)
      releaseVoice(id)
  end
end
```

**See also:** [onNote](./onNote.md), [postEvent](./postEvent.md), [onRelease](./onRelease.md), [releaseVoice](./releaseVoice.md), [onRetrigger](./onRetrigger.md)