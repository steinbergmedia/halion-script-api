/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# playTriggerPad

>**playTriggerPad(number)**

#### Description

Function to send the trigger events of the Trigger Pads to subsequent modules of the script module.

>&#10069; This function does not trigger the pads of the Trigger Module. It only changes the state of the trigger pads in the depending modules, for example, to switch between the variations of a FlexPhraser or MIDI Player.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**number**|The number of the trigger pad in the range from 1 to 8.|number|

#### Example

```lua
--[[
Cycle up through different variations with each note-on.
The example assumes there is a FlexPhraser or MIDI Player with
variations 1-8 assigned to the trigger pads 1-8.
--]]

variation = 1
function onNote(event)
  if variation > 8 then
    variation = 1
  end
  playTriggerPad(variation)
  postEvent(event)
  variation = variation + 1
end
```

**See also:** [onTriggerPad](./onTriggerPad.md)