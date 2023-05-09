/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Switch

---

**On this page:**

[[_TOC_]]

---

## Description

The Switch control allows you to create different types of switches. It can be configured as an on/off switch with two states or as a multi-state switch with an arbitrary number of states. Furthermore, it can be set to Increment or Decrement, to edit values stepwise. To realize exclusive switches that can act as a radio group, Exclusive mode can be selected. In this mode, each switch can be configured to send a dedicated value and all related switches are connected to the same parameter. The Switch control requires several bitmaps, depending on the specified mode and it can be set to scalable, which allows for resizing of the switch. The used bitmaps are resized according to the Scale Modes that are defined for the respective [Bitmap](./Bitmap.md) resources.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:value}}
|**Mode**|<ul><li>**Push:** Sends a value of 1 and returns to 0. This mode requires bitmaps for Off and Down. If Hover is active, an additional bitmap Hover is required.</li><li>**OnOff:** Sets a value of 1 when pressed, 0 when pressed again. This mode requires bitmaps for Off, Off Down, On and On Down. If Hover is active, the additional bitmaps Off Hover and On Hover are required.</li><li>**Multiple:** In this mode, the switch can step through multiple states each time that it is clicked. For each state, the bitmaps must refer to bitmap resources or sections that contain a vertically aligned subframe per state, comparable to an animation sequence, such as the one that is used in knob controls, for example.</li><li>**Increment:** This mode allows you to increment the connected parameter value each time that the switch is clicked.</li><li>**Decrement:** This mode allows you to decrement the connected parameter value each time that the switch is clicked.</li><li>**Exclusive:** This mode allows you to use multiple switches as a radio group where only one switch is active at a time. An additional property allows you to define the value that is sent when the switch is on. To configure a radio group, connect all participating switches to the same parameter and define the Onvalue for each switch.</li><li>**Hover:** This mode allows you to switch directly from 0 to max (depending on the connected parameter) when hovering the switch without needing to click it.</li><li>**Hover Exclusive:** This mode allows you to use multiple hover switches as a radio group where only one switch is active at a time. An additional property allows you to define the value that is sent when the switch is on. To configure a radio group, connect all participating switches to the same parameter and define the Onvalue for each switch.</li></ul>|
|**Style**|<ul><li>**Hover:** Shows a dedicated bitmap when hovering the switch. A hover bitmap resource must be assigned.</li><li>**Shaped:** The switch only reacts when you click the visible pixels, i.e., the pixels with an alpha value > 0.</li><li>**Invert:** Inverts the displayed bitmaps.</li><li>**Scalable:** {{#include ./_Properties.md:scalable}} This also works if the switch is set to Multiple. In this case, the margin splitters are defined as for simple bitmaps, but the lower splitter must be set in the lowest subframe.</li><li>**Popup:** This mode allows you to use a switch to open a template as a popup.</li><li>**Clickthrough:** Activate this option if you want the mouse click to be used by the switch but also to be forwarded to an underlying control.</li></ul>|
|**Bitmaps**|<ul><li>**Off:** Allows you to assign the bitmap that is used for the off state.</li><li>**Off Down:** Allows you to assign the bitmap that is used for the off state with mouse button held down.</li><li>**Off Hover:** Allows you to assign the bitmap that is used for the off state when the mouse is hovering over the switch.</li><li>**On:** Allows you to assign the bitmap that is used for the on state.</li><li>**On Down:** Allows you to assign the bitmap that is used for the on state with the mouse button pressed.</li><li>**On Hover:** Allows you to assign the bitmap that is used for the on state when the mouse is hovering over the switch.</li><li>**State:** Allows you to assign a multi-frame bitmap that is used for the different states.</li><li>**State Down:** Allows you to assign a multi-frame bitmap that is used for the different states with the mouse button pressed.</li><li>**State Hover:** Allows you to assign a multi-frame bitmap that is used for the different states when the mouse is hovering over the switch.</li></ul>|
|**Onvalue**|Allows you to define the value that is sent when the switch is turned on. This option is only available in Exclusive mode. <p>If you want to create a switch template that allows you to specify the Onvalue on the instance level of the template, you must export this property.<ul><li>Click the Export button on the right of the Onvalue field.</li></ul>Now, the switch template shows the additional Onvalue as a template parameter and you can use the switch template several times and configure each instance of the template individually.</p>|
|**Popup**|The following settings are only available for the Popup style.<ul><li>**Template:** Here, you can specify the template that is shown when the switch is clicked.</li><li>**Close on Click:** <ul><li>**Inside:** Activate this option if you want the Popup to close when a click inside the template is performed. This can be used to create menu popups where the popup closes when a menu entry is selected, for example.</li><li>**Outside:** Activate this option if you want the Popup to close when a click outside the template is performed (but within the area of the macro page). This can be used to close menu popups without the need to select one of the items, for example. If this option is deactivated, it can be used to create popups that remain visible until they are closed, e.g., using a close switch on the popup.</li></ul></li><li>**Mode:** Specifies how the popup template is opened.<ul><li>**Inherit:** Uses the popup mode of the switch that opens the popup.</li><li>**Overlay:** Opens the popup as a layer over the macro page. This means that the popup is restricted to the dimensions of the macro page.</li></ul></li><li>**Placement:** Here, you can specify where on the macro page the popup is shown. The options define the postion of the popup in relation to the switch.<ul><li>**Place Left:** The popup opens on the left side of the switch.</li><li>**Place Right:** The popup opens on the right side of the switch.</li><li>**Place Left+Right:** The popup opens horizontally centered.</li><li>**Place Above:** The popup opens above the switch.</li><li>**Place Below:** The popup opens below the switch.</li><li>**Place Above+Below:** The popup opens vertically centered.</li></ul></li></ul>|

[Jump to Top ](#switch)

## Examples

### Radio buttons
A radio switch group can be realized by connecting several switches, all set to Exclusive mode, to the same parameter. For each switch, the Onvalue must be specified.

**Switching pages:**

1. Create an integer variable, name it "Pages", e.g., and specify a range of 0-2.
1. Add three exclusive switches and set their Values to the variable "Pages".
1. Set the Onvalues of the switches to 0,1, and 2.
1. Add a Stack with three child views and set the stack Value to the variable "Pages", too.
1. The switches now allow to switch between the three views.

### Hover Mode Switch
The Hover mode can be used to switch between stack views when hovering over a switch control. Since the switch can also be used invisible, i.e., without any bitmap assigned, it can be layered under a knob control and control a stack view switching between the parameter label and a text view displaying the current parameter value. To see how this can be set up, load one of the knobs from the [Additional Controls](./Exploring-Templates.md#additional-controls) library.

[Jump to Top ](#switch)