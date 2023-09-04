/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Stack

## Description

A Stack allows you to create switchable subpages or views. Each child of the stack is considered as a view that is shown exclusively, depending on the value of the stack. Most of the time, stacks are controlled by radio switches, providing one switch per stack view. If you activate the Fade option, you can add a blending effect when switching between views. If you want to connect the stack value only to a radio switch group to change the visibility of pages on the UI, without connecting the value to an engine or script module parameter, you can define an integer variable, e.g., Var_Pages. Then set the value property of the stack to Var_Pages and do the same for the radio group switches.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:value}}
|**Style**|**Fade:** Activate this option if you want to blend views when switching.|
