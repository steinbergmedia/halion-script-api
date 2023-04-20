/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# AudioFile.open

>**AudioFile.open(filename)**

#### Description

The ``AudioFile.open`` function creates an [AudioFile](./Audio-File.md) object of the specified audio file. The [AudioFile](./Audio-File.md) object can be used to retrieve information from the audio file, for example, the sample rate, bit depth, length in samples, etc. The location of the audio file can be a folder or a VST Sound archive.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**filename**|The file path and name of the audio file.|string|

#### Return Values

Returns an [AudioFile](./Audio-File.md) object of the specified audio file.

#### Example

```lua
-- Open an audio file from Skylab.
fname = "vstsound://F29C895D6D8E4D6C9BCBBA5198412192/.samples/Ambient Pad 01/Ambient Pad 01 - C3.tg3c"
af = AudioFile.open(fname)
-- Print the sample rate and bit depth.
print("Sample Rate: "..af.rate)
print("Bit Depth: "..af.bits)
```

**See also:** [AudioFile](./Audio-File.md), [getPeak](./getPeak.md)