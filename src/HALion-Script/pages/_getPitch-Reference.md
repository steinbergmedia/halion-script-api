/* ANCHOR: all */
>**getPitch(start, length, channel)**

#### Description

// ANCHOR: description
Function to obtain the pitch of an audio file that has been analyzed with [analyzePitch](./analyzePitch.md). The audio file you want to obtain the pitch from is specified with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. The arguments ``start`` and ``length`` define the range in the audio file that is used for obtaining the pitch. The ``channel`` argument specifies the channel of the audio file that was analyzed. The [AudioFile](./Audio-File.md) object and the ``channel`` argument must match the call to [analyzePitch](./analyzePitch.md). The function returns two values: The pitch as MIDI note number with decimals for cents and a boolean for voiced/unvoiced detection. If ``length`` is greater than 20 ms, the average of the pitches in the specified range is returned. If the audio file has not been analyzed in advance, getPitch returns ``nil``.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**start**|The start position in samples.|number|
|**length**|The duration in samples. Set this to less than or equal to 0 to use all samples from the specified ``start`` to the end of the file.|number|
|**channel**|Use this to specify the audio channel that was analyzed.|number, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns a tuple with two values:

* A float value representing the pitch as MIDI note number with decimals for cents,
* a boolean for voiced/unvoiced detection. The return value ``true`` means that a pitch was detected in the specified range.

If ``length`` is greater than 20 ms, the average of the pitches in the specified range is returned. If the audio file has not been analyzed in advance, getPitch returns ``nil``.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
{{#include ./_analyzePitch-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */