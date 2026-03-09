/*ANCHOR: all */

// ANCHOR: function
>**getWavetableCreationProgress()**

{{#include ../../_Version.md:halion750}}
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to monitor an ongoing [createWavetable](./createWavetable.md) operation. The [AudioFile](./Audio-File.md) object of ``getWavetableCreationProgress`` must match the [AudioFile](./Audio-File.md) object of the corresponding [createWavetable](./createWavetable.md) call, as returned by [AudioFile.open](./AudioFileopen.md).

**Available in:** Controller.
// ANCHOR_END: description

#### Return Values

// ANCHOR: return-values
Returns the progress as a float value between 0 and 1, and an error message if the wavetable creation did not succeed, otherwise ``nil``.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
{{#include ./_createWavetable-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */