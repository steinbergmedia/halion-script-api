/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# cancelPitchAnalysis

>**cancelPitchAnalysis(channel)**

## Description

Function to cancel a pitch analysis you started with [analyzePitch](./analyzePitch.md). You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. The ``channel`` argument specifies the channel of the audio file. The [AudioFile](./Audio-File.md) object and the ``channel`` argument must match the call to [analyzePitch](./analyzePitch.md).

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**channel**|Use this to specify the channel of the audio file that is being analyzed.|number, optional|

## Example

{{#include ./_analyzePitch-Example.md}}

**See also:** [analyzePitch](./analyzePitch.md), [getPitch](./getPitch.md), [getPitchAnalysisProgress](./getPitchAnalysisProgress.md)