/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Sample Display

## Description

The Sample Display template contains a waveform control that is controlled by an attached script. This script has several parameters which are connected to the corresponding sample osc parameters and which will display the loop regions depending on the selected loop (A or B) for the release and sustain loops. It also shows/hides the looped regions, depending on whether the loop is active or not. The template itself only provides a scope parameter to define which sample zone to display.

## Properties

Poperty|Description|
|:-|:-|
|**Name**|The name of the Sample Display.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Scope**|Allows you to specify which sample zone to display. The template works for both sample and grain zones. If a sample zone is connected, the Play Pos connection inside the template on the waveform control must be set to @id:a0064, for grain zones to @id:100064.|
