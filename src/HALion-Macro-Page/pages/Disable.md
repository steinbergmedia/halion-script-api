/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Disable

## Description

The Disable control allows you to put all child controls out of function. To indicate this, all children of the Disable control are drawn grayed out and semitransparent. To disable the control, connect a parameter to the value property and specify the value that should cause the disabling. You can also specify multiple values, e.g., to disable a parameter that should only be available for specific states of another parameter. If you want the control to be enabled for a particular value and disabled for the rest of the values, activate the Enable option.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:value}}
|**Enable**|Activate this option if you want to enable the control for the specified values.|
|**Hide**|Activate this option if you want to hide the control for the specified values.|
|**0-31**|Activate the values for which you want to disable or enable the control (depends on the Enable and Hide settings).|
