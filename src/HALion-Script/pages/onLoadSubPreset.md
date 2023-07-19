/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onLoadSubPreset

>**onLoadSubPreset(section, data)**

## Description

This callback function is called when loading a subpreset with a corresponding [Preset Browser](../../HALion-Macro-Page/pages/Preset-Browser.md) template. The callback will only be called if the scope of the [Preset Browser](../../HALion-Macro-Page/pages/Preset-Browser.md) template is set correctly.

* If the MacroPage with the [Preset Browser](../../HALion-Macro-Page/pages/Preset-Browser.md) template is attached to an element other than the script module (e.g., the program), the scope must be set to the script module (e.g., @0:Script Module).
* If the MacroPage with the [Preset Browser](../../HALion-Macro-Page/pages/Preset-Browser.md) template is attached to the script module, the scope does not need to be set.

In addition, the [Preset Browser Custom](../../HALion-Macro-Page/pages/Preset-Browser-Custom.md) template allows you to define a section for the subpreset. When you load a subpreset, the defined section and the data stored in the subpreset will be passed on to the callback. The data is the same data that was returned by [onSaveSubPreset](./onSaveSubPreset.md) when the subpreset was saved. You can manage different subsets of parameters by using the section as condition for an ``if`` statement that restores only the parameters of interest.

{{#include _onLoad-onSaveSubPreset-Note.md}}

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**section**|The section as defined in the [Preset Browser Custom](../../HALion-Macro-Page/pages/Preset-Browser-Custom.md) template.|string|
|**data**|The data that was returned by [onSaveSubPreset](./onSaveSubPreset.md).||

## Example

{{#include ./_onLoad-onSaveSubPreset-Example.md}}

**See also:** [onSaveSubPreset](./onSaveSubPreset.md)