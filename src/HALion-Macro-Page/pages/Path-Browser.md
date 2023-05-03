/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Path Browser

## Description

The Path Browser is a pre-configured template that contains several objects (image, text, dropview, switch) and can be used on macro pages to open folders and select objects, such as sample files, for example. In addition to the common properties like size, position etc., it provides a number of special properties which allow you to configure the control template. If the control needs to be adapted graphically, this can be done inside the template by changing the individual components. The control also accepts the drop of folders or files directly from sources like the Explorer or Finder. When clicking the open icon, a file dialog opens that lets you choose the file or folder. Clicking OK will set this path.

## Properties

Poperty|Description|
|:-|:-|
|**Name**|The name of the Path Browser.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Value**|Connect the parameter that requires a path and file name here.|
|**Typename**|Allows you to specify the name of the type filter that will be shown in the file dialog.|
|**Extension**|Allows you to specify a file type filter like .wav or .aiff, so that the file dialog only shows files of that type.|
|**Titel**|Allows you to specify the name of the file dialog as it will be shown in the caption.|
|**Tag**|Allows you to specify a unique name that is used to memorize the location at which you left the file dialog the last time. All path browsers that use the this tag will point to the same last location.|
