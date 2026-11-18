/*ANCHOR: all */

// ANCHOR: function
>**cancelWavetableCreation()**

{{#include ../../_Version.md:halion7510}}
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to cancel an ongoing [createWavetable](./createWavetable.md) operation. The [AudioFile](./Audio-File.md) object of ``cancelWavetableCreation`` must match the [AudioFile](./Audio-File.md) object of the corresponding [createWavetable](./createWavetable.md) call, as returned by [AudioFile.open](./AudioFileopen.md).

**Available in:** Controller.
// ANCHOR_END: description

#### Example

// ANCHOR: example
{{#include ./_createWavetable-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */