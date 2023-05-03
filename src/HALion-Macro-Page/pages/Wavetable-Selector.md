/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Wavetable Selector

## Description

The Wavetable Selector template is a pre-configured template that contains several objects (image, text, switch) and can be used on macro pages to select wavetables. The loader template can be configured for the first or the second ocillator. In addition to the common properties like size, position, etc., it provides a number of template parameters that allow you to configure the control template. If the control needs to be adapted graphically, this can be done inside the template by changing the individual components.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Wavetable Selector.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Scope**|Allows you to specify which oscillator in the program hierarchy should be affected.<p>**Example:** Scope=@0:Zone 1/ This means that the first tree item with the Name "Zone 1" is affected.</p>|
|**Product**|Set this to "HALion" if you want to load HALion factory and user wavetables from the standard HALion path. You can also specify the name for your own product. When preparing factory wavetables as part of a VST Sound container, wavetables must be located in the corresponding folder Sub Presets/"Product"/Sub Presets/Wavetable/Wavetables/. In that case, only wavetables located in the "Product" subfolder are shown in the wavetable selector.|
|**Load From**|Allows you to specify a sub path to define a subfolder (or path) inside your product folder. When delivering VST Sound containers that contain wavetables, these must be located in the corresponding path to be found.<p>**Example:** Path = "MyWavetables" in combination with product = "MyProduct", will load wavetables from .../MyProduct/MyWavetables/.</p>|
|**Osc**|Defines which oscillator (1 or 2) of the wavetable zone is controlled.|
|**Label**|Allows you to set the label that is shown above the menu. By default, it is set to "Wavetable".|
