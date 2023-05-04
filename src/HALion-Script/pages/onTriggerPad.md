/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onTriggerPad

>**onTriggerPad(number)**

## Description

This callback function is called when the script module receives a trigger event from a trigger pad. The Trigger Pads module must be placed before the script module. Trigger events are produced when the pad is pressed with the mouse, when a trigger note is played via MIDI or by calling [playTriggerPad](./playTriggerPad.md) from another script module.

>&#10069; To be able to alter the trigger events, the function onTriggerPad does not pass on the trigger events automatically. To pass on the trigger events to subsequent modules, [playTriggerPad](./playTriggerPad.md) must be called. See example below.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**number**|The number of the trigger pad in the range from 1 to 8.|number|

## Example

```lua
-- Print the pad number and pass the trigger event on.

function onTriggerPad(n)
    print("Trigger Pad: "..n)
    playTriggerPad(n)
end
```

**See also:** [playTriggerPad](./playTriggerPad.md)