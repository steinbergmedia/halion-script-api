/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getBeatTimeInBar

>**getBeatTimeInBar()**

#### Description

Function to obtain the position in the current bar in number of beats (quarter notes).

**Available in:** Processor.

#### Return Values

When the host is in playback, the function returns a decimal with the number of beats (quarter notes) since the start of the current bar. The start of the bar equals 0 beats. The function returns -1 if the host is not in playback.

#### Example

```lua
-- Print the position in the current bar.

function onNote(event)
    posInBar = getBeatTimeInBar()
    if (posInBar ~= -1) then
        print(string.format("%.3f beats", posInBar))
    else
        print("Playback is stopped.")
    end
end
```

**See also:** [getBeatTime](./getBeatTime.md), [getMsTime](./getMsTime.md)