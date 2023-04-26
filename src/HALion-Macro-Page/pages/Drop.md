/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Drop

## Description

The Drop control allows you to create an area where you can drop objects, like files, folders and other objects that deliver either a string or a path. In addition to the common properties like size, position etc., it provides a number of special properties that allow you to configure the control. The Drop control can show a bitmap to indicate the drop area, display a bitmap if drop is accepted or rejected, and can be configured using regular expressions to accept only files of a specific type.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Drop control.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Value**|Allows you to connect a parameter. Value expects either a string or a path.|
|**Style**|<ul><li>**Path:** Set this option if you want to accept path objects.</li><li>**String:** Set this option if you want to accept string objects.</li><li>**Scalable:** Activate this option if you want to be able to resize the drop control. In that case, the assigned bitmap resources are resized according to the scale mode that is defined for the bitmap resource.</li></ul>|
|**Bitmap**|Allows you to assign a bitmap resource that is displayed permanently.|
|**Reject Bitmap**|Allows you to assign a bitmap resource that is displayed if an object cannot be dropped.|
|**Accept Bitmap**|Allows you to assign a bitmap resource that is displayed if an object can be dropped.|
