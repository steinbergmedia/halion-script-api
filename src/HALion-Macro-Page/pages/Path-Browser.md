/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Path Browser

---

**On this page:**

[[_TOC_]]

---

## Description

The Path Browser is a preconfigured template that contains several objects (image, text, dropview, switch) and can be used to open folders and select objects, such as sample files, for example. In addition to the common properties like size, position etc., it provides a number of special properties which allow you to configure the control template. If the control needs to be adapted graphically, this can be done inside the template by changing the components. The control also accepts the drop of folders or files directly from sources like the Explorer or Finder. When clicking the open icon, a file browser opens that lets you choose the file or folder. Clicking OK sets this path for the parameter that is connected to the Value parameter of the template.

## Template Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:template}}

## Template Parameters

|Parameters|Description|
|:-|:-|
|**Value**|Connect the parameter that requires a path and file name here.|
|**Typename**|Allows you to specify the name of the file type filter that will be shown in the file browser.|
|**Extension**|Allows you to specify a file type filter like .wav or .aiff, so that the file browser only shows files of that type.|
|**Title**|Allows you to specify the title of the file browser that will be shown in the caption.|
|**Tag**|Allows you to specify an unique identifier that is used to memorize the location at which you left the file browser the last time. All path browsers that use the this tag will point to the same last location.|

## Components inside the Template

![PathBrowser Template](../images/PathBrowser-Template.PNG)

### Controls and Subtemplates

|Item|Description|
|:-|:-|
|**switch:**|A [Switch](./Switch.md) that opens the file browser. Its Value must be set to ``@Browser``.|
|**dropview:**|A [Drop](./Drop.md) control for dropping files and folders. Its Value must be set to ``@Path``. The regular expression for the Accept Filter uses the file extension that is specified by the Extension parameter.|
|**text:**|A [Text](./Text.md) control for displaying the path.|
|**Back:**|An [Image](./Image.md) control that provides the background bitmap for the path.|
