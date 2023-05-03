/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Wavetable Noise Selector

## Description

The Wavetable Noise Selector template is a preconfigured template that contains several objects (image, text, switch) and can be used on macro pages to select wavetables noise samples. The loader template can be configured to use the HALion standard folder to look for noise samples or to use an exclusive product-specific folder. In addition to the common properties like size, position, etc., it provides a Label parameter. If the control needs to be adapted graphically, this can be done inside the template by changing the individual components.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Wavetable Noise Selector.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Scope**|Allows you to specify which oscillator in the program hierarchy should be affected.<p>**Example:** Scope=@0:Zone 1/ This means that the first tree item with the Name "Zone 1" is affected.</p>|
|**Product**|Set this to "HALion" if you want to load HALion factory and user noise samples from the standard HALion path. You can also specify the name for your own product. When preparing factory noises as part of a VST Sound container, noise samples must be located in the corresponding folder ./"Product"/Sub Presets/Wavetable/Noises/. In that case, only noises located in the "Product" subfolder are shown in the wavetable noise selector.|
|**Label**|Allows you to set the label that is shown above the menu. By default, it is set to "Wavetable Noises".|
