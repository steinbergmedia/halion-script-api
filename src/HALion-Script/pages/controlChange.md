/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# controlChange

>**controlChange(controller, value)**

#### Description

Function to generate controller events.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**controller**|The controller number. See [Controller Numbers](./Controller-Numbers.md) for a description of the different controllers.|number|
|**value**|The controller value in the range of 0 to 127.|number|

#### Example

```lua
-- Invert the values of all MIDI controllers.

function onController(event)
    if event.controller < 120 then
        controlChange(event.controller, 127 - event.value)
    else
        postEvent(event) -- Other controllers are just passed through.
    end
end
```

**See also:** [onController](./onController.md), [getCC](./getCC.md), [afterTouch](./afterTouch.md), [pitchBend](./pitchBend.md)