/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Controller Numbers

## Description

Continuous controller events are determined by their controller number. Controller numbers from 0 to 127 follow the MIDI specification. Controller numbers above 127 are additional controllers that are specific to HALion.

>To limit a function to the continuous controllers of the MIDI specification, use an if statement. See example below.

**Available in:** Processor.

## Additional Controllers

Controllers like aftertouch, pitch bend and other special controllers are determined by controller numbers above 127.

|Number|Controller|
|:-|:-|
|128|Aftertouch|
|129|Pitchbend|
|130|Controller A|
|131|Controller B|
|132|Controller C|
|133|Controller D|
|134|Controller E|
|135|Controller F|
|136|Controller G|
|137|Controller H|
|138|Reserved for polyhonic Velocity|
|139|Reserved for polyhonic Note Expression Custom 1|
|140|Reserved for polyhonic Note Expression Custom 2|
|141|Reserved for polyhonic Note Expression Custom 3|
|142|Reserved for polyhonic Note Expression Custom 4|
|143|Reserved for polyhonic Note Expression Custom 5|
|144|Reserved for polyhonic Note Expression Custom 6|
|145|Reserved for polyhonic Note Expression Custom 7|
|146|Reserved for polyhonic Note Expression Custom 8|
|147|RPN Pitch Bend Range|
|148|RPN Channel Fine Tuning (value range -8191 to 8191 equals -100 to 100 cent)|
|149|RPN Channel Coarse Tuning (value range -64 to 63 equals -64 to 63 semitones)|
|150|RPN Tuning Program Change|
|151|RPN Tuning Bank Select|
|152|RPN Modulation Depth Range|

>The function [onController](./onController.md) will not be called by controllers 138 to 146. They are reserved for the polyphonic sources note-on velocity and note expression custom 1-8. You can use the callback functions [onNote](./onNote.md) and [onNoteExpression](./onNoteExpression.md) instead.

## Example

```lua
-- Exclude MIDI mode messages and other special controllers.
function onController(event)
    if event.controller < 120 then
        print("Controller #: "..event.controller..", Value: "..event.value)
        postEvent(event)
    end
end
```

**See also:**  [onController](./onController.md), [controlChange](./controlChange.md), [getCC](./getCC.md)