/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getBeatTime

>**getBeatTime()**

#### Description

Function to obtain the current song position in number of beats (quarter notes).

**Available in:** Processor.

#### Return Values

When the host is in playback, the function returns a decimal with the number of beats (quarter notes) since the start of the song. The start of the song equals 0 beats. The function returns -1 if the host is not in playback.


#### Example

```lua
-- Print the song position in number of beats.

function onNote(event)
    posInSong = getBeatTime()
    if (posInSong ~= -1) then
        print(string.format("%.3f beats", posInSong))
    else
        print("Playback is stopped.")
    end
end
```

**See also:** [getMsTime](./getMsTime.md), [getBeatTimeInBar](./getBeatTimeInBar.md)