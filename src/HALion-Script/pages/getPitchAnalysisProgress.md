/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getPitchAnalysisProgress

>**getPitchAnalysisProgress(channel)**

## Description

Function to monitor the progress of [analyzePitch](./analyzePitch.md). You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. The ``channel`` argument specifies the channel of the audio file. The [AudioFile](./Audio-File.md) object and the channel argument must match the call to [analyzePitch](./analyzePitch.md). The function returns the progress as a float value between 0 and 1.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**channel**|Use this to specify the channel of the audio file that is being analyzed.|number, optional|

## Return Values

Returns the progress as a float value between 0 and 1.

## Example

{{#include ./_analyzePitch-Example.md}}

**See also:** [analyzePitch](./analyzePitch.md), [getPitch](./getPitch.md), [cancelPitchAnalysis](./cancelPitchAnalysis.md)