/* ANCHOR: all */
>**cancelPitchAnalysis(channel)**

#### Description

// ANCHOR: description
Function to cancel a pitch analysis you started with [analyzePitch](./analyzePitch.md). You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. The ``channel`` argument specifies the channel of the audio file. The [AudioFile](./Audio-File.md) object and the ``channel`` argument must match the call to [analyzePitch](./analyzePitch.md).

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**channel**|Use this to specify the channel of the audio file that is being analyzed.|number, optional|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
{{#include ./_analyzePitch-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */