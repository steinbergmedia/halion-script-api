/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# analyzeWavetableAsync

>**analyzeWavetableAsync(wavetable, waves, callback)**

{{#include ../../_Version.md:halion750}}

## Description

Function to analyze the waves of a [Wavetable Table](./Wavetable-Table.md) and update their spectral data asynchronously. Unlike [analyzeWavetable](./analyzeWavetable.md), this function runs in a parallel thread, allowing progress to be monitored via the returned [Progress](./Progress.md) object.

Waves in the wavetable are organized into *wave sequences* — groups of consecutive waves sharing the same [.filename](./Wavetable-Table.md#wave-fields). For each wave sequence, ``analyzeWavetableAsync`` reads the [.linkEnvelope](./Wavetable-Table.md#wave-fields) field of the first wave of the sequence. If the field is ``true``, the [.time](./Wavetable-Table.md#wave-fields) of each wave in that sequence is synchronized with its [.samplePos](./Wavetable-Table.md#wave-fields), and [.linkEnvelope](./Wavetable-Table.md#wave-fields) is set to ``true`` for all waves of that sequence.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
{{#include ./_analyzeWavetable-Arguments.md}}
|**callback**|A function called once analysis completes, is canceled, or fails. Receives the [Progress](./Progress.md) object as its argument, allowing the result or error state to be inspected. See Return Values for the fields available on this object.|function, optional|

## Return Values

Returns a [Progress](./Progress.md) object with the following fields:

|Field|Description|Value Type|
|:-|:-|:-|
|**.progress**|The analysis progress in the range from 0 to 1.|number|
|**.root**|The analyzed [Wavetable Table](./Wavetable-Table.md) on completion, otherwise ``nil``.|table|
|**.cancel**|Set this to ``true`` to abort the analysis. The callback will still be called, with ``.cancel`` set to ``true`` on the [Progress](./Progress.md) object.|boolean|
|**.error**|Error message if the analysis failed, otherwise ``nil``.|string|
|**.info**|User-definable field, for example, to manage several parallel threads.|string or table|

## Example

{{#include ./_analyzeWavetableAsync-Example.md}}

**See also:** [analyzeWavetable](./analyzeWavetable.md), [cancelWavetableCreation](./cancelWavetableCreation.md), [createWavetable](./createWavetable.md), [getWavetable](./getWavetable.md), [getWavetableCreationProgress](./getWavetableCreationProgress.md), [setWavetable](./setWavetable.md), [Wavetable Constants](./Wavetable-Constants.md), [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md), [Wavetable Table](./Wavetable-Table.md)