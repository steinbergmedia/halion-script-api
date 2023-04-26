/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Text

## Description

The text control can be used to edit either strings or values, depending on the type of parameter that it is connected to. If a parameter is defined as a value, you can increase and decrease the value by clicking on the text control and dragging up and down. For string parameters, you can enter the string. With Fit String and Fit Path, there are two options to automatically shorten a string if it is getting too long to be displayed completely. For value parameters, you can add a unit that is displayed behind the value. If you want increment and decrement buttons, take the combined value box template, which contains a text control with up and down buttons.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Text control.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Style**|<ul><li>**Fit Strings:** Activate this option if you want a string to be shortened automatically if it cannot be fully displayed in the edit field. This method first removes spaces, then vowels.</li><li>**Fit Path:** Activate this option if you want a path string to be shortened automatically if it cannot be fully displayed in the edit field. This method keeps the first and last characters of the string and puts "..." in between to indicate that letters were omitted.</li><li>**Wordwrap:** Activate this option if you want to write text in more than one line. The text continues on the next line as soon as it does not fit into the current line.</li><li>**Read-Only:** Activate this option if you want to use the text as a display-only parameter which cannot be edited.</li></ul>|
|**Font**|Allows you to select the [Font](./Font.md) resource that is used to display the text.|
|**Units**|A unit, such as milliseconds (ms) or decibel (dB), can be displayed with the value. Any string can be used. The value must be displayed in the correct value format to match the selected unit.|
{{#include ./_Alignment-Text.md}}
