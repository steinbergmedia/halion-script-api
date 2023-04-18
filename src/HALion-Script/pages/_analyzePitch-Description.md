>**analyzePitch(callback, channel)**

#### Description

Function to analyze the pitch of an audio file. You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. The arguments ``callback`` and ``channel`` are optional. If called without a callback function, analyzePitch will be executed in the same thread. If called with a callback function as argument, analyzePitch will be executed in a separate, parallel thread. You can specify the channel to be analyzed with the ``channel`` argument. Without the ``channel`` argument multiple channels of an audio file will be summed before the pitch is analyzed. The callback function is called with the [AudioFile](./Audio-File.md) object as the first and the ``channel`` as the second argument after the pitch has been analyzed. The results of analyzePitch are cashed as long as the corresponding [AudioFile](./Audio-File.md) object exists. The function itself does not return any pitch information. You must use [getPitch](./getPitch.md) to obtain the analyzed pitch.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**callback**|Callback function that is called with the AudioFile object as argument after the pitch has been analyzed.|function, optional|
|**channel**|Use this to specify the channel of the audio file to be analyzed. Leave this empty or set this to 0 for summing all audio channels before they are analyzed.|number, optional|

#### Example

{{#include ./_analyzePitch-Example.md}}
