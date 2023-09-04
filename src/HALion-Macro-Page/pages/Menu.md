/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Menu

## Description

The Menu control allows you to create special switches that open a menu. This menu is filled with the available values delivered by the connected parameter. You can choose to open a tree menu control instead of the standard menu, which is helpful when the number of available options increases. The menu itself can show a [Bitmap](Bitmap.md) for its off state and the hover state, but it can also work without any bitmaps. Often, it is used in combination with a dedicated background image and a [Text](Text.md) control that shows the selected value. Menu and [Text](Text.md) controls are connected to the same parameter.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:value}}
|**Style**|<ul><li>**Popup:** If this option is activated, a tree menu is displayed instead of the standard menu.</li><li>**Hover:** Shows a dedicated bitmap when hovering over the menu.</li><li>**Shaped:** The control only reacts when you click the visible pixels, i.e., the pixels with an alpha value > 0.</li><li>**Scalable:** {{#include ./_Properties.md:scalable}}</li><li>**Checkable:** Activate this to show a check mark for the selected menu item. Deactivate this option if you want to be able to use a menu entry, e.g., to call a script function. In this case, no check mark is wanted, and the same menu item can be clicked repeatedly.</li></ul>|
|**Bitmaps**|<ul><li>**Background:** Allows you to assign the [Bitmap](Bitmap.md) that is used for the off state.</li><li>**Hover:** Allows you to assign the [Bitmap](Bitmap.md) that is used when the mouse is hovering over the control.</li></ul>|
