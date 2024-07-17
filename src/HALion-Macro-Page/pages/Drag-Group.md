/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Drag Group

{{#include ../../_Version.md:halion700}}

---

**On this page:**

[[_TOC_]]

---

## Description

The Drag Group control allows you to implement drag operations. You can drag a simple text information or excecute more complex script functions. As a drop target you can use either the [Drop](./Drop.md) control, or an external target. The graphical representation of the dragged object includes a snapshot of all controls that exists inside the Drag Group.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:scope}}
|**Drag Info**|The Drag Info can be used as follows:<ul><li>It can be a string that will be send to the target.</li><li>It can be a UI variable that will be read at drag time.</li><li>It can also be modified at drag time by the script callback [onDropGetInfo](#ondropgetinfo) by returning another string.</li>|
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}

## Drag Group Callbacks

### onDropGetInfo

>**onDropGetInfo(viewname, draginfo)**

#### Description

Callback for the source of the drag operation when the operation starts. The text in ``draginfo`` is taken from the Drag Info property of the control.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the dragging view.|string|
|**draginfo**|The text specified by the Drag Info property.|string|

#### Return Values

The function can return a table with the following keys:

|Return Value|Description|Value Type|
|:-|:-|:-|
|**copy**|Set this to ``true`` if copying is allowed, ``false`` if not.|boolean|
|**move**|Set this to ``true`` if moving is allowed, ``false`` if not.|boolean|
|**info**|The draginfo argument of the subsequent callbacks is determined by this return value. By default, 'info' returns the string specified by the Drag Info property. By modifying the 'info' return value you can control the response of the subsequent callbacks.|string|
|**files**|A table with file paths for evaluation by external software when the drop operation is executed there.|table with file paths as strings|
|**data** {{#include ../../_Version.md:halion710}}|A table with filenames and region information when dropping a region from Cubase, for example.|See [Data Field Format](#data-field-format).|

##### Data Field Format

The data field contains tables with filenames and region information. 

```lua
{ files = { "fn1", "fn2", ... } }

{ regions = { { filename = "fn1", start = 123, length = 456 }, { filename = "fn2", start = 456, length = 789 }, ... } } }

```

### onDropInsert

>**onDropInsert(viewname, draginfo, copy, data)**

#### Description

Callback for the target of the drag operation when the drop is executed.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the targeted view.|string|
|**draginfo**|This string is specified by the 'info' return value of the [onDropGetInfo](#ondropgetinfo) callback when the drag operation starts.|string|
|**copy**|Indicates if the drag is a copy operation.|string|
|**data** {{#include ../../_Version.md:halion710}}|A table with filenames and region information when dropping a region from Cubase, for example.|See [Data Field Format](#data-field-format).|

### onDropFeedback

{{#include ../../_Version.md:halion710}}

>**onDropFeedback(viewname, draginfo, copy, data)**

#### Description

Callback for the target of the drag operation when a drag object is held over it.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the targeted view.|string|
|**draginfo**|This string is specified by the 'info' return value of the [onDropGetInfo](#ondropgetinfo) callback when the drag operation starts.|string|
|**copy**|Indicates if the drag is a copy operation.|string|
|**data**|A table with filenames and region information when dropping a region from Cubase, for example.|See [Data Field Format](#data-field-format).|

### onDropDone

>**onDropDone(viewname, draginfo, copy, data)**

#### Description

This callback is called when the drop operation is complete.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the source view.|string|
|**draginfo**|This string is specified by the 'info' return value of the [onDropGetInfo](#ondropgetinfo) callback when the drag operation starts.|string|
|**copy**|Indicates if the drag is a copy operation.|string|
|**data** {{#include ../../_Version.md:halion710}}|A table with filenames and region information when dropping a region from Cubase, for example.|See [Data Field Format](#data-field-format).|

