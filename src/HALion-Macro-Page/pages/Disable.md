/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Disable

## Description

The Disable control allows you to put all child controls out of function. To reflect that state, all children are drawn grayed out and semitransparent. To disable the control, connect a parameter to the value property and specify the value that should cause the disabling. You can also specify multiple values, for example, to disable a parameter that should only be available for specific states of another parameter. If you want the control to be enabled for a particular value and disabled for the rest of the values, activate the Enable option.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Disable control.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Value**|Drag and drop a parameter from the **Parameter List** to this text field to establish a connection. The assigned parameter will be displayed. Alternatively, you can export the property, which can then be used as a template parameter on a template instance.|
|**Enable**|Activate this option if you want to enable the control for the specified values.|
|**Hide**|Activate this option if you want to hide the control for the specified values.|
|**0-31**|Activate the values for which the you want to disable (or enable, depending on the mode) the control.|