/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Group

## Description

A Group has no graphical representation and only serves as a container for other controls and templates. It can be added manually to the GUI Tree and then be positioned, sized, and filled with objects or it can be created automatically using the group command from the context menu on selected tree items. The size of a group is automatically adapted when objects are added, but it can also be adjusted manually. Furthermore, you can specify a scope for a group, which allows you to let all controls inside this group only affect a specific target.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Group.|
|**Scope**|Allows you to define which part of the Program Tree is affected by the controls inside the group.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}

