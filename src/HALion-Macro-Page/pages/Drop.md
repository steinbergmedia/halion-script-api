/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Drop

## Description

The Drop control allows you to create an area where you can drop objects, like files, folders and other objects that deliver either a string or a path. In addition to the common properties like size, position etc., it provides a number of special properties that allow you to configure the control. The Drop control can show a bitmap to indicate the drop area, display a bitmap if dropping an object is accepted or rejected, and can be configured with a regular expression to accept only files of a specific type.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
|**Value**|Allows you to connect a parameter that receives the string or the path.|
|**Style**|<ul><li>**Path:** Set this option if you want to accept path objects.</li><li>**String:** Set this option if you want to accept string objects.</li><li>**Scalable:** {{#include ./_Properties.md:scalable}}</li></ul>|
|**Accept Filter**|Allows you to define a regular expression to accept only files of a specific type.|
|**Bitmaps**|<ul><li>**Background:** Allows you to assign a bitmap resource that is displayed permanently.</li><li>**Reject:** Allows you to assign a bitmap resource that is displayed if an object cannot be dropped.</li><li>**Accept:** Allows you to assign a bitmap resource that is displayed if an object can be dropped.</li></ul>|
