/* ANCHOR: all */

// ANCHOR: function
>**getOnsets(start, length, peakThreshold, sensThreshold, minLength)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to analyze the onsets in an audio file. You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. The onset analysis is performed on the sum of all channels in the audio file. The arguments ``start``  and ``length``  define the time range in the audio file to be analyzed. The ``peakThreshold``  and ``sensThreshold``  arguments determine the minimum level and the weight of an onset, the ``minLength``  argument determines the minimum duration between consecutive onsets.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**start**|The start position in samples.|number|
|**length**|The duration in samples. Set this to equal to or less than 0 to use all samples from the specified ``start`` to the end of the sample.|number|
|**peakThreshold**|The minimum level in decibels. Onsets with lower level are skipped. The value range is from -96 to 0.|number|
|**sensThreshold**|The minimum weight in percent. Onsets with lower weight are skipped. The value range is from 0 to 100.|number|
|**minLength**|The minimum duration between consecutive onsets in milliseconds. The value range is from 0 to 10000.|number|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns an array with the positions of the detected onsets.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
fname = "vstsound://271CB2CFA75E4295B1C273FA651FE11D/.Samples/g:/projects/yamahacontentserver/Download/Release/ycj/ME_Waveform/Loop145/samples/Loop145_072(2).wav"
 
af = AudioFile.open(fname)
 
onsets = af:getOnsets(0, -1, -24, 0, 10)
  
for i, pos in ipairs(onsets) do
   print(i.." ".."Onset: "..pos)
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */