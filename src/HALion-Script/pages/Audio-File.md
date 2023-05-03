/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) /

# Audio File

The AudioFile class describes the properties of audio files.

---

**On this page:**

[AudioFile Class](#audiofile-class), [analyzePitch](#analyzepitch), [cancelPitchAnalysis](#cancelpitchanalysis), [getOnsets](#getonsets), [getPeak](#getpeak), [getPitch](#getpitch), [getPitchAnalysisProgress](#getpitchanalysisprogress)

---

## Classes

### AudioFile Class

#### Description

The [AudioFile.open](./AudioFileopen.md) function creates an AudioFile object of the specified audio file. The AudioFile object can be used to retrieve information from the audio file, for example, the sample rate, bit depth, length in samples, etc. The AudioFile object has the following fields.

>&#10069; All fields of the AudioFile object are read-only.

**Available in:** Controller, Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.valid**|Indicates if the file is a supported audio file and whether it could be opened or not.|boolean|
|**.fileName**|The file name that was used for opening the audio file.|string|
|**.rate**|The sample rate of the audio file. Returns ``nil`` if the audio file could not be opened or is invalid.|number|
|**.bits**|The bit depth of the audio file. Returns ``nil`` if the audio file could not be opened or is invalid.|number|
|**.channels**|The number of channels of the audio file. Returns ``nil`` if the audio file could not be opened or is invalid.|number|
|**.length**|The number of samples in the audio file. Returns ``nil`` if the audio file could not be opened or is invalid.|number|
|**.rootKey**|The root key stored in the sampler chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate sampler chunk or could not be opened or is invalid.|number|
|**.keyLow**|The lowest key of the key range stored in the sampler chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate sampler chunk or could not be opened or is invalid.|number|
|**.keyHigh**|The highest key of the key range stored in the sampler chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate sampler chunk or could not be opened or is invalid.|number|
|**.velLow**|The lowest velocity of the velocity range stored in the sampler chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate sampler chunk or could not be opened or is invalid.|number|
|**.velHigh**|The highest velocity of the velocity range stored in the sampler chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate sampler chunk or could not be opened or is invalid.|number|
|**.detune**|The tune offset in cents stored in the sampler chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate sampler chunk or could not be opened or is invalid.|number|
|**.level**|The level offset in dB stored in the sampler chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate sampler chunk or could not be opened or is invalid.|number|
|**.tempo**|The tempo in bpm stored in a data chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate data chunk or could not be opened or is invalid.|number|
|**.beats**|The number of beats stored in a data chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate data chunk or could not be opened or is invalid.|number|
|**.signature**|A pair of values for the numerator and denominator of the signature stored in a data chunk of the audio file. The values are ``nil`` if the audio file does not contain an appropriate data chunk or could not be opened or is invalid.|number, number|
|**.sampleStart**|The position of the sample start in samples stored in a data chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate data chunk or could not be opened or is invalid.|number|
|**.sampleEnd**|The position of the sample end in samples stored in a data chunk of the audio file. Returns ``nil`` if the audio file does not contain an appropriate data chunk or could not be opened or is invalid.|number|
|**.loops**|The loop start and end positions in samples stored in a data chunk of the audio file. The returned table is an array that contains tables with the fields loopStart and loopEnd for each loop. Returns ``nil`` if the audio file does not contain an appropriate data chunk or could not be opened or is invalid.|table|

#### Example

```lua
-- Open an audio file from HALion Sonic 1.0.

fname = "vstsound://502B301A6C914CEDA5C7500DC890C4DC/.Samples/g:/projects/yamahacontentserver/download/release/smtg/winds/Samples/DP060_FluteC3.wav"
af = AudioFile.open(fname)
loops = af.loops

-- Print information from the audio file.

if af.valid then
  print(fname, "opened.")
  print("Sample Rate: ", af.rate)
  print("Bit Depth: ", af.bits)
  print("Channels: ", af.channels)
  print("Sample Length: ", af.length)
  if loops then
    print("Loop Start: ", loops[1].loopStart)
    print("Loop End: ", loops[1].loopEnd)
  end
else
  print(fname, "does not exist.")
end
```
[Jump to Top ](#audio-file)

## Methods

### analyzePitch

{{#include ./_analyzePitch-Reference.md:all}}

[Jump to Top ](#audio-file)

### cancelPitchAnalysis

{{#include ./_cancelPitchAnalysis-Reference.md:all}}

[Jump to Top ](#audio-file)

### getOnsets

{{#include ./_getOnsets-Reference.md:all}}

[Jump to Top ](#audio-file)

### getPeak

{{#include ./_getPeak-Reference.md:all}}

[Jump to Top ](#audio-file)

### getPitch

{{#include ./_getPitch-Reference.md:all}}

[Jump to Top ](#audio-file)

### getPitchAnalysisProgress

{{#include ./_getPitchAnalysisProgress-Reference.md:all}}

[Jump to Top ](#audio-file)
