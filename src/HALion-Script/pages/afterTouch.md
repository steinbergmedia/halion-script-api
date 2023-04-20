/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# afterTouch

>**afterTouch(value)**

#### Description

Function to generate channel aftertouch events.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**value**|The aftertouch value in the range of 0 to 127.|number|

#### Example

```lua
-- Invert aftertouch values.
function onAfterTouch(event)
    local invAT =  127 - event.value
    afterTouch(invAT)
    print("Inverse AT:", invAT)
end
```

**See also:** [onAfterTouch](./onAfterTouch.md), [controlChange](./controlChange.md), [pitchBend](./pitchBend.md)