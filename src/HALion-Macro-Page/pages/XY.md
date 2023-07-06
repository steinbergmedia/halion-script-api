/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# XY

## Description

The XY control allows you to control two parameters with one two-dimensional control. You can connect a parameter to the X Value, which is then controlled by horizontal movements of the handle and a parameter to the Y Value which is controlled by the vertical movements of the handle. A bitmap can be assigned to the Handle property. The XY control is transparent, which means that only the handle is drawn on the macro page. If you need a background to indicate the area that is used by the control, you can either put an image behind it or create a template and add a background image there.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
|**X Value**|Drag and drop a parameter from the Parameter List to this text field to establish a connection. The assigned parameter will be displayed. Alternatively, you can export the property, which can then be used as a template parameter on a template instance.|
|**Y Value**|Drag and drop a parameter from the Parameter List to this text field to establish a connection. The assigned parameter will be displayed. Alternatively, you can export the property, which can then be used as a template parameter on a template instance.|
|**Click Value**|Allows you to transmit the information that the XY control has been clicked. The value changes from 0 to 1. The main purpose is to connect it to a UI script that needs to react to mouse clicks. It is not intended to be connected to HALion engine parameters.|
|**Hover**|Enable this option to send the X/Y values when moving the mouse cursor above the control. This mode should be used with X/Y values that are connected to a UI script. Otherwise, when connected to engine parameters, this will result in a large amount of undo entries. For example, the X/Y control could be used to control a SVG animation that changes two properties over X and Y. The X/Y values that are sent to engine parameters could only be evaluated when the mouse is clicked.|
|**Handle**|Allows you to assign a bitmap that is used as a handle.|