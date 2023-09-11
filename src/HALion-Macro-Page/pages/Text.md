/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Text

## Description

The Text control can be used to edit either strings or values, depending on the type of parameter that it is connected to. If a parameter is defined as a value, you can increase and decrease the value by clicking on the text control and dragging up and down. For string parameters, you can enter the string. The Fit String and Fit Path options automatically shorten a string if it is getting too long to be displayed completely. For value parameters, you can add a unit that is displayed behind the value. If you want increment and decrement buttons, you can use the "ValueBox Black Flat" template from the Basic Controls library (in the "Flat" folder found in the "Text and Value" folder). This template contains a text control with up and down buttons.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
|**Style**|<ul><li>**Fit Strings:** Activate this option if you want a string to be shortened automatically if it cannot be fully displayed in the edit field. This method first removes spaces, then vowels.</li><li>**Fit Path:** Activate this option if you want a path string to be shortened automatically if it cannot be fully displayed in the edit field. This method keeps the first and last characters of the string and puts "..." in between to indicate that letters were omitted.</li><li>**Wordwrap:** Activate this option if you want to write text in more than one line. The text continues on the next line as soon as it does not fit into the current line.</li><li>**Read-Only:** Activate this option if you want to use the text as a display-only parameter which cannot be edited.  {{#include ../../_Version.md:halion610}}</li><li>**Val Meter:** Activate this option if you want to display a value meter popup display when dragging the text control.  {{#include ../../_Version.md:halion700}}</li><li>**Single Click:** Activate this option if you want to enter edit mode with a single click.  {{#include ../../_Version.md:halion700}}</li><li>**Immediate:** Activate this option if you want to update values immediately while typing. {{#include ../../_Version.md:halion700}}</li></ul>|
{{#include ./_Properties.md:font}}
|**Units**|A unit, such as milliseconds (ms) or decibel (dB), can be displayed with the value. Any string can be used. The value must be displayed in the correct value format to match the selected unit.|
{{#include ./_Properties.md:alignment}}
|**Val Meter**| The following properties are only accessible if the Val Meter style has been activated.<ul><li>**Template:** Here you can select a template that is shown as value meter when dragging the text control. The template must contain an indicating control like a slider or an animation with an exported Value property. This value appears under Template Parameters and can then be connected to the same parameter as the text control. With no template specified, the HALion value meter popup display is used. {{#include ../../_Version.md:halion700}}</li><li>**Placement:** Here you can define the relative position in relation to the text control where the Val Meter should be shown.</li><li>**Template Parameter:** All exported properties of the selected template will be listed here. However, only the Value property needs to be exported for the value meter functionality. Since the Template Parameters can also be exported, the Value property of the Val Meter template and the Value property of the text control can be combined to be used as a single common template parameter, e.g., on a text control template. {{#include ../../_Version.md:halion700}}</li></ul>|
