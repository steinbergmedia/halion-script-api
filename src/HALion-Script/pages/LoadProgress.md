/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) /

# LoadProgress

The properties of the LoadProgress class can be used to monitor the progress when loading elements of VST presets.

---

**On this page:**

[[_TOC_]]

---

## Classes

### LoadProgress Class

#### Description

The functions [loadPresetAsync](./loadPresetAsync.md), [appendLayerAsync](./appendLayerAsync.md) and [insertLayerAsync](./insertLayerAsync.md) return a LoadProgress object. The properties of the LoadProgress object are described by the following fields.

**Available in:** Controller.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.progress**|The load progress in the range from 0 to 1.|number|
|**.root**|The value of ``.root`` will be the [Element](./Element.md) object of the first element (root) of the loaded VST preset. Depending on whether you load a layer, program, or multi-program VST preset, this is either an [Element](./Element.md) object of the type [Layer](./Layer.md), [Program](./Program.md),or [Instance](./Instance.md).|[Layer](./Layer.md), [Program](./Program.md) or [Instance](./Instance.md|
|**.cancel**|Set this to true to cancel the loading of the preset.|boolean|
|**.error**|Message if an error occured.|string|
|**.info**|User definable field, for example, to manage several loading threads.|string or table|

#### Example

{{#include ./_loadPresetAsync-Example.md}}