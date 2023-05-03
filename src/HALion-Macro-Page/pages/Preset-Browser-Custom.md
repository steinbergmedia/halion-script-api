/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Preset Browser Custom

## Description

Preset Browser Custom is a preconfigured template that contains several objects (image, text, switches) and can be used on macro pages to manage subpresets for modules and sections, such as the presets of a MIDI script module or an audio effect, for example. In addition to the common properties like size, position, etc., it provides a number of special properties that allow you to configure the template. If the control needs to be adapted graphically, this can be done inside the template by changing the individual components. The template contains switches for load, save, and delete which open the corresponding dialogs.

The preset selector always gathers all available subpresets from several locations. Which locations are included depends on the configuration of the selector (Product and Load From parameters). Locations can be:

* Presets installed as factory content in the HALion/Sub Presets folder.
* Presets that are part of a VST Sound container and located inside a corresponding folder structure.
* Presets that were saved to the user documents folder (as specified under Product, Load From and Save To).

## Properties

Poperty|Description|
|:-|:-|
|**Name**|The name of the Preset Browser Custom template.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Scope**|Allows you to specify which module in the program hierarchy the presets should affect.<p>**Example:** Scope = @bus:0/@0:Multi Delay/ This means that the first effect with the name Multi Delay in the first bus is affected.</p>|
|**Product**|Allows you to specify the name of your product. This will be used as first folder ./user/documents/Steinberg/{Product}/Sub Presets/ when saving a preset. When preparing factory presets as part of a VST Sound container, presets must be located in the corresponding subpreset folder.|
|**Section**|Allows you to specify the Section for which a preset should be saved and restored. The Section names can be found in the Parameter List. For example: Set Section to "Amp Env" to save and restore presets for the amp envelope only. If no Section is set, presets are created for the entire module, zone, etc., depending on the defined scope. Defining a Section will create a Section subfolder in the subpreset path with the section name.<p>**Note:** Sections can also be created within a script and may not appear in the Parameter List. For more information on how to work with sections, please refer to the HALion Script Documentation.</p>|
|**Load From**|Allows you to specify a sub path to define a folder (or path) inside your product folder. When delivering VST Sound containers that contain wavetables, these must be located in the corresponding path. Otherwise they are not found.<p>**Example:** Load From = "Fx/Delay" in combination with Product = "MyProduct", will load presets from .../MyProduct/Sub Presets/Fx/Delay/.</p>|
|**Save To**|Allows you to specify a sub path relative to the Load From path, to define in which folder presets are saved by default.<p>**Example:** Save To = "MyDelays" in combination with Load From = "Fx/Delay" and with Product = "MyProduct", will save presets to .../MyProduct/Sub Presets/Fx/Delay/MyDelays.</p>If you want to save presets for specific sections like LFOs or envelopes, which are to be shared among all LFOs or envelopes, save the presets to a common path. To create a common path use ../ to create and access a folder that is a level higher in the folder structure.<p>**Example:** path=../Env will save presets to .../MyProduct/Sub Presets/Env.</p>This way, all envelope preset browsers with this path can access the same folder and share presets, even if one preset has been saved for the Filter Env unit and another one for the Amp Env unit. Keep in mind that presets need to be compatible to be shareable.<p>If the content delivers subpresets in multiple VST Sound containers, all subpresets with the same path will be collected and shown in the sub preset selector.</p>|
|**Extension**|Allows you to specify which kind of file types should be offered in the preset selector. By default, the preset selector works with "halpreset" files, which is the common file type for HALion subpresets. If you want to load VST presets, for example, to exchange layers using a script, set the extension type to "vstpreset".|
