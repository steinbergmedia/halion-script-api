/* ANCHOR: all */

// ANCHOR: function
>**getDecomposeProgress()**

{{#include ../../_Version.md:halion700}}
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to monitor the progress of the [decompose](./decompose.md) function for an audio file. You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. To get the progress of a specific audio file that is being decomposed, the [AudioFile](./Audio-File.md) object of the getDecomposeProgress function must match the [AudioFile](./Audio-File.md) object of the corresponding [decompose](./decompose.md) function. The function returns two values: the progress as a value between 0 and 1 and an error message if the decompose did not succeed.

**Available in:** Controller.
// ANCHOR_END: description

#### Return Values

// ANCHOR: return-values
Returns the progress as a float value between 0 and 1, and an error message if the decompose did not succeed. The error message returns ``nil`` if the decompose was successful.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
{{#include ./_decompose-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */