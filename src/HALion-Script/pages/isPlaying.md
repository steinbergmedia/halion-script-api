/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# isPlaying

>**isPlaying()**

## Description

Function to detect whether the host is in playback.

**Available in:** Processor.

## Return Values

Returns ``true`` if the host is in playback and ``false`` if not.

## Example

```lua
-- Detect if the host is in playback.
function onNote(event)
    if isPlaying() then
        print("Playback is running.")
    else
        print("Playback is stopped.")
    end
end
```