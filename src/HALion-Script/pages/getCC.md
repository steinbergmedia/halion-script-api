/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getCC

>**getCC(controller)**

#### Description

Function to read the current value of a continuous controller.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**controller**|The controller number. See [Controller Numbers](./Controller-Numbers.md) for a description of the different controllers.|number|

#### Return Values
Returns the current value of the continuous controller specified by the argument.

#### Example

```lua
-- Replace the note-on velocity with the value of the modulation wheel.

function onNote(event)
    playNote(event.note, getCC(1))
end
```

**See also:** [onController](./onController.md), [controlChange](./controlChange.md)