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
|**Drag Info**|The Drag Info can be used as follows:<ul><li>It can be a text info that will be carried to the receiver.</li><li>It can be a UI variable that will be read at drag time.</li><li>It can also be modified at drag time by the script callback onDropGetInfo by returning another text.</li>|
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}

## Drag Group Callbacks

### onDropGetInfo

>**onDropGetInfo(viewname, draginfo)**

#### Description

Callback for the source of the drag operation when the operation starts. The text in ``draginfo`` is taken from the corresponding property of the control.

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
|**info**|A modified Drag Info text.|string|
|**files**|A table with file paths for evaluation by external software when the drop operation is performed there.|table with file paths as strings|

### onDropInsert

>**onDropInsert(viewname, draginfo, copy)**

#### Description

Callback for the target of the drag operation when the drop is executed.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the targeted view.|string|
|**draginfo**|The Drag Info text specified at the start of the drag operation.|string|
|**copy**|Indicates if drag is a copy operation (``true``).|string|

### onDropDone

>**onDropDone(viewname, draginfo, copy)**

#### Description

Callback for the source of the drag operation when the drop has completed.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the source view.|string|
|**draginfo**|The Drag Info text specified at the start of the drag operation.|string|
|**copy**|Indicates if drag is a copy operation (``true``).|string|
