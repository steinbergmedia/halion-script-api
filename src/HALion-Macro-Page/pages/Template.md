/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Template

## Description

A template control represents an instance of a template. The number of available template parameters depends on the contents and setup of the template, i.e., the number of controls that are used in it and the number of control parameters that are exported. If a template has an attached UI script, additional script parameters can be exported.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the template control.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template Parameters**|In this section, all parameters that are exported by controls and templates from inside the template are displayed. When using a template, these exported parameters can be set or connected like standard properties.|
