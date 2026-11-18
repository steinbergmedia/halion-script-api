/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) /

# Progress

The properties of the Progress class can be used to monitor the progress of asynchronous operations, such as loading elements of VST presets or processing functions like [analyzeWavetableAsync](./analyzeWavetableAsync.md).

---

**On this page:**

[Progress Class](#progress-class)

---

## Classes

### Progress Class

#### Description

Functions such as [loadPresetAsync](./loadPresetAsync.md), [appendLayerAsync](./appendLayerAsync.md), [insertLayerAsync](./insertLayerAsync.md) and [analyzeWavetableAsync](./analyzeWavetableAsync.md) return a Progress object. The properties of the Progress object are described by the following fields.

**Available in:** Controller.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.progress**|The progress in the range from 0 to 1.|number|
|**.root**|The result of the completed operation. For loading functions, this is the [Element](./Element.md) object of the first element (root) of the loaded VST preset, which can be of the type [Layer](./Layer.md), [Program](./Program.md),or [Instance](./Instance.md). For processing functions like [analyzeWavetableAsync](./analyzeWavetableAsync.md), this is the processed object, e.g. the analyzed [Wavetable Table](./Wavetable-Table.md).|[Layer](./Layer.md), [Program](./Program.md), [Instance](./Instance.md), or [Wavetable Table](./Wavetable-Table.md)|
|**.cancel**|Set this to ``true`` to cancel the operation.|boolean|
|**.error**|Message if an error occurred.|string|
|**.info**|User definable field, for example, to manage several threads.|string or table|

#### Example for Loading Functions

{{#include ./_loadPresetAsync-Example.md}}

#### Example for Processing Functions

{{#include ./_analyzeWavetableAsync-Example.md}}