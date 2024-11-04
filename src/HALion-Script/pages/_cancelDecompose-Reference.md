/* ANCHOR: all */

// ANCHOR: function
>**cancelDecompose()**

{{#include ../../_Version.md:halion700}}
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to cancel the [decompose](./decompose.md) function for an audio file. You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. To cancel the decompose of a specific audio file, the [AudioFile](./Audio-File.md) object of the cancelDecompose function must match the [AudioFile](./Audio-File.md) object of the corresponding [decompose](./decompose.md) function.

**Available in:** Controller.
// ANCHOR_END: description

#### Example

// ANCHOR: example
{{#include ./_decompose-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */