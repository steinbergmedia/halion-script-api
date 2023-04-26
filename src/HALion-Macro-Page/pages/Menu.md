/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Menu

## Description

The Menu control allows you to create special switches that open a menu. This menu is filled with the available values delivered by the connected parameter. You can choose to open a tree menu control instead of the standard menu, which is helpful when the number of available options increases. The menu itself can show a bitmap for its off state and the hover state, but it can also work without any bitmaps. Often, it is used in combination with a dedicated background image and a text control that shows the selected value. Menu and text controls are connected to the same parameter.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Menu.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
{{#include ./_Value.md}}
|**Style**|<ul><li>**Popup:** If this option is activated, a tree menu is displayed instead of the standard menu.</li><li>**Hover:** Shows a dedicated bitmap when hovering over the menu.</li><li>**Shaped:** The control only reacts when you click the visible pixels, i.e., the pixels with an alpha value > 0.</li><li>**Scalable:** Activate this option if you want to be able to resize the switch. In that case, the assigned bitmap resources are resized according to the Scale Mode that is defined for the [Bitmap](./Bitmap.md) resource.</li><li>**Checkable:** Activate this option to show a check mark for the selected menu item. Deactivate this option if you want to be able to use a menu entry, e.g., to call a script function. In this case, no check mark is wanted, and the same menu item can be clicked repeatedly.</li></ul>|
|**Bmp Off**|Allows you to assign the bitmap that is used for the off state.|
|**Bmp Hover**|Allows you to assign the bitmap that is used when the mouse is hovering over the control.|
