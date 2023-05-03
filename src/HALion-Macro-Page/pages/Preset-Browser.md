/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Preset Browser

## Description

The Preset Browser is a preconfigured template that contains several objects (image, text, switches) and that can be used on macro pages to manage subpresets for modules, such as the presets of a MIDI script module or an audio effect, for example. In addition to common properties like Size, Position, etc., it provides a Scope property that allows you to define the module or component in the program hierarchy for which the preset management is performed. If the control needs to be adapted graphically, this can be done inside the template by changing the individual components. The template contains switches for Load, Save, and Delete which open the corresponding dialogs.

Subpresets are loaded from the standard HALion subpreset path and saved to the standard user documents path, which is derived from the specified scope. You can click the Save switch to open a save dialog which shows the path for the current preset, to see the exact path of a module. If you want to build a VST Sound container that contains subpresets, your presets must be located in the same path structure inside the container.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Preset Browser.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Scope**|Allows you to specify which module in the program hierarchy the presets should affect.<p>**Example:** Use 'Scope=@bus:0/@0:Tube Compressor' to manage the subpresets of the first Tube Compressor in the first bus.</p>|