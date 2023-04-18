/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getPeak

>**getPeak(start, length, rms)**

## Description

Function to analyze the levels in an audio file. You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. The arguments start and length define the range in the audio file to be analyzed. The rms argument determines whether the peak level or the RMS level of the specified range is returned.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**start**|The start position in samples.|number|
|**length**|The duration in samples. Set this to equal to or less than 0 to use all samples from the specified start to the end of the file.|number|
|**rms**|If this is set to 0, the peak level of the specified range will be returned. If this is set to a value above 0, the RMS level over the specified range will be calculated.|number|

## Return Values

Returns the level of the specifed range as a linear value. The example shows how to convert the value from linear to dB.

## Example

```lua
function lin2db(lin)
  return 20 * math.log(lin) / math.log(10)
end

fname = "vstsound://F29C895D6D8E4D6C9BCBBA5198412192/.samples/Ambient Pad 01/Ambient Pad 01 - C3.tg3c"
af = AudioFile.open(fname)

-- Analyze the peak level in the first 1000 samples.

attpeak = af:getPeak(0, 1000, 0)

-- Analyze the RMS level in the range from 1000 samples till the end of the file.

susrms = af:getPeak(1000, -1, 1)
print("Attack Peak:", attpeak, "(", lin2db(attpeak), "dB )")
print("Sustain RMS:", susrms, "(", lin2db(susrms), "dB )")
```

**See also:** [AudioFile](./Audio-File.md), [AudioFile.open](./AudioFileopen.md)