/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onSaveSubPreset

>**onSaveSubPreset(section)**

## Description

This callback function is called when saving a subpreset with a corresponding [Preset Browser](../../HALion-Macro-Page/pages/Preset-Browser.md) template. The callback will only be called if the scope of the [Preset Browser](../../HALion-Macro-Page/pages/Preset-Browser.md) template is set correctly.

* If the MacroPage with the [Preset Browser](../../HALion-Macro-Page/pages/Preset-Browser.md) template is attached to an element other than the script module (e.g., the program), the scope must be set to the script module (e.g., @0:Script Module).
* If the MacroPage with the [Preset Browser](../../HALion-Macro-Page/pages/Preset-Browser.md) template is attached to the script module itself, the scope does not need to be set.

In addition, the [Preset Browser Custom](../../HALion-Macro-Page/pages/Preset-Browser-Custom.md) template allows to define a section for the subpreset. When you save a subpreset, the section will be passed on from the [Preset Browser Custom](../../HALion-Macro-Page/pages/Preset-Browser-Custom.md) template to the callback. You can manage different subsets of parameters by using the section as condition for an if statement that stores only the parameters of interest. The data you pass on to the return statement will be stored with the subpreset. The data can be of any type, but it is common practice to use a table that can easily be extended with more fields. When the subpreset is restored, the [onLoadSubPreset](./onLoadSubPreset.md) callback will receive the stored data.

{{#include _onLoad-onSaveSubPreset-Note.md}}

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**section**|The section as defined in the [Preset Browser Custom](../../HALion-Macro-Page/pages/Preset-Browser-Custom.md) template.|string|

## Return Values

The returned data will be stored in a subpreset.

## Example

{{#include ./_onLoad-onSaveSubPreset-Example.md}}

**See also:** [onLoadSubPreset](./onLoadSubPreset.md)