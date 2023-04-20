/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getMsTime

>**getMsTime()**

#### Description

Function to obtain the current song position in milliseconds.

**Available in:** Processor.

#### Return Values
When the host is in playback, the function returns a decimal with the milliseconds since the start of the song. The start of the song equals 0 ms. The function returns -1 if the host is not in playback.


#### Example

```lua
-- Print the song position in milliseconds.

function onNote(event)
    posInSongMs = getMsTime()
    if (posInSongMs ~= -1) then
        print(string.format("%.3f ms", posInSongMs))
    else
        print("Playback is stopped.")
    end
end
```

**See also:** [getBeatTime](./getBeatTime.md), [getBeatTimeInBar](./getBeatTimeInBar.md)