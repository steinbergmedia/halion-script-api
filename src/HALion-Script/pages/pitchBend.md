/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# pitchBend

>**pitchBend(value)**

## Description

Function to generate pitch bend events.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**value**|The pitch bend value in the range of -1.0 to 1.0.|number|

## Example

```lua
-- Invert pitch bend values.

function onPitchBend(event)
    local invPB = event.bend * -1
    pitchBend(invPB)
    print("Inverse PB: "..invPB)
end
```

**See also:** [onPitchBend](./onPitchBend.md), [controlChange](./controlChange.md), [afterTouch](./afterTouch.md)