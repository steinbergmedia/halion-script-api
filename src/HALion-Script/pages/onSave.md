/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onSave

>**onSave()**

#### Description

This callback function is called when the script module is saved as part of a preset or project. The data you pass on to the ``return`` statement will be stored with the preset or project. The data can be of any type, but it is common practice to use a table that can easily be extended with more fields. When the script module is restored, the [onLoad](./onLoad.md) callback will receive the stored data.

**Available in:** Controller.

#### Return Values

The returned data will be stored as part of the preset or project.

#### Example

{{#include ./_onLoad-onSave-Example.md}}

**See also:** [onLoad](./onLoad.md)