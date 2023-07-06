/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Template List

---

**On this page:**

[[_TOC_]]

---

## Description

A Template List can be used to create a list of template instances, where each template is used to control different parameter scopes. You can choose any template in the template property. The look of each list view row or column, depends on the selected template. All templates are added as line entries in a column, as entries in a row or in a grid without spaces in between. If you need an optical space between two entries, position and resize the referenced template content accordingly or add separating graphical elements.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
|**Layout**|<ul><li>**Horizontal:** Activate this option to align the child templates horizontally in a row.</li><li>**Vertical:** Activate this option to align the child templates vertically in a column.</li><li>**Grid:** Activate this option to align the child templates in a two-dimensional grid.</li></ul>
|**Alignment**|Here, you can adjust how the referenced child templates are positioned in the available Template List area.<ul><li>**Center:** All child templates are added to the list in their original size. The row, column, or grid is then centered inside the Template List area.</li><li>**Left:** All child templates are added to the list in their original size. The row, column, or grid is then positioned to the left of the Template List area.</li><li>**Right:** All child templates are added to the list in their original size. The row, column, or grid is then positioned to the right of the Template List area.</li><li>**Fill Height:** The child templates are scaled to fill the Template List area vertically.</li><li>**Fill Width:** The child templates are scaled to fill the Template List area horizontally.</li><li>**Fill:** All list cells are resized equally to match the size of the Template List. The content of the child templates is then positioned and resized according to the Scale and Attachment settings of the contained controls.</li></ul>|
{{#include ./_Tooltip.md}}
|**Value**|Allows you to read out the index of the focused template instance.|
|**Style**|<ul><li>**H-Scroll:** Shows a horizontal scrollbar. (Not available with Alignment = Fill or Fill Height.)</li><li>**V-Scroll:** Shows a vertical scrollbar. (Not available with Alignment = Fill or Fill Width.)</li><li>**Fill:** The template is scaled to fill the list entry space completely.</li><li>**Horizontal:** By default, the templates are listed vertically in a column. Activate this option to align them horizontally in a row.</li><li>**Order:** Set this option if you want to be able to change the order of items via drag and drop. This is only a graphical reordering option. If you want the order change to have an effect on the program, for example, if you want to change the order of alternating layers, this functionality must be scripted.</li><li>**Custom SB:** Set this option if you want to use custom scrollbars. For custom scrollbars, you must assign various bitmap resources in the Scrollbars section. The height of the horizontal scroll bar and the width of the vertical scroll bar depend on the maximum width/height of the Hor Back and Ver Back bitmaps.<ul><li>**Example:** If Hor Back is set to a height of 30 pixels and Ver Back to 36 pixels, both will use 36 pixels.</li><li>**Note:** Scrollbars can only be scaled in their original orientation, i.e., vertical scrollbars scale only vertically and horizontal scrollbars only horizontally.</li></ul></li></ul>|
|**Focus Var**|Allows you to specify a variable (``@MyFocusVariable``) that can be used inside the source template, for example to switch the focus within a stack view or an Animation.|
|**Index Var**|Allows you to specify a variable (``@MyIndexVariable``) that can be used inside the source template to display the index number of the list entry.|
|**Scrollbars**|Allows you to assign the resources that are required to draw custom scrollbars.<ul><li>**Up:** Up button bitmap.</li><li>**Up Press:** Up button Pressed bitmap.</li><li>**Down:** Down button bitmap.</li><li>**Down Press:** Down button Pressed bitmap.</li><li>**Ver Back:** Vertical scrollbar background bitmap.</li><li>**Ver Handle:** Vertical scrollbar handle bitmap.</li><li>**Handle Top:** Top section of the vertical handle.</li><li>**Handle Bot:** Bottom section of the vertical handle.</li><li>**Left:** Left button bitmap.</li><li>**Left Press:** Left button Pressed bitmap.</li><li>**Right:** Right button bitmap.</li><li>**Right Press:** Right button Pressed bitmap.</li><li>**Hor Back:** Vertical scrollbar background bitmap.</li><li>**Hor Handle:** Vertical scrollbar handle bitmap.</li><li>**Handle Left:** Left section of the horizontal handle.</li><li>**Handle Right:** Right section of the horizontal handle.</li></ul>|

[Jump to Top ](#template-list)

## Optional Script Callbacks

### onTemplateListGetDragInfo

>**onTemplateListGetDragInfo(viewname, draginfo, index)**

#### Description

Callback for the source of the drag operation when the operation starts. The text in ``draginfo`` is taken from the corresponding property of the control.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the dragging view.|string|
|**draginfo**|The text specified by the Drag Info property.|string|

#### Return Values

The function can return a table with the following keys:

|Return Value|Description|Value Type|
|:-|:-|:-|
|**copy**|Set this to ``true`` if copy is allowed, ``false`` if not.|boolean|
|**move**|Set this to ``true`` if move is allowed, ``false`` if not.|boolean|
|**info**|A modified Drag Info text.|string|
|**files**|A table of files.|table with strings|

[Jump to Top ](#template-list)

### onTemplateListDropFeedback

>**onTemplateListDropFeedback(viewname, draginfo, toindex, offset, copy)**

#### Description

Callback for the target of the drag operation when an item is held over the view. If implemented it can control the optical feedback for the potential drop operation or reject dropping the item.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the targeted view.|string|
|**draginfo**|The draginfo text specified at drag start time.|string|
|**toindex**|The index of the targeted item.|integer|
|**offset**|The values -1,0,1 indicates if the drop is before, on or behind the targeted item.|integer|
|**copy**|Indicates if drag is a copy operation (``true``).|boolean|

#### Return Values

The function can return a table with the following keys:

|Return Value|Description|Value Type|
|:-|:-|:-|
|**accept**|Set this to false to reject the drop operation|boolean|
|**template**|Name of a template to show as animation|string|	
|**index**|Index of the item, where the **template** should be placed to.|string|
|**insert**|Set this to true if the **template** should be placed before the targeted item instead of placing it above. All items below will be shifted then.|boolean|
|**resize**|Set this to ``true`` if **template** should be resized to the size of the targeted item.|boolean|

[Jump to Top ](#template-list)

### onTemplateListDrop

>**onTemplateListDrop(viewname, draginfo, toindex, offset, copy)**

#### Description

Callback for the target of the drag operation when the drop is executed.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the targeted list view.|string|
|**draginfo**|The Drag Info text.|string|
|**toindex**|Index of the targeted item.|integer|
|**offset**|The values -1,0,1 indicates if the drop is before, on or behind the targeted item.|integer|
|**copy**|Indicates if drag is a copy operation (``true``).|boolean|

[Jump to Top ](#template-list)

### onTemplateListDropDone

>**onTemplateListDropDone(viewname, draginfo, index, copy)**

Callback for the source of the drag operation when the drop has completed.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the source view.|string|
|**draginfo**|The Drag Info text specified at the start of the drag operation.|string|
|**index**|Index of the dragged item.|integer|
|**copy**|Indicates if drag is a copy operation (``true``).|string|

[Jump to Top ](#template-list)

### onTemplateListViewDrop

Simplified callback for just reordering items inside a list. If implemented the drag feedback is done automatically. The callback is called if the drop is done to do the reordering operation.

>&#10069; Replaces the callbacks [onTemplateListDropFeedback](#ontemplatelistdropfeedback), [onTemplateListDrop](#ontemplatelistdrop) and [onTemplateListDropDone](#ontemplatelistdropdone). Do not combine them.

>**onTemplateListViewDrop(viewname, fromindex, toindex)**

|Argument|Description|Value Type|
|:-|:-|:-|
|**viewname**|The name of the source view.|string|
|**fromindex**|Index of the dragged item.|integer|
|**toindex**|new index of the dragged item.|integer|

[Jump to Top ](#template-list)

## Examples

### Creating a Template List

* Add Template List to your macro page.
* Select the template that you want to use for each list entry.
* Check the Template parameters which are added to the Template List.
* Create a String List variable for each template parameter that you want to connect.
* Connect the template parameters to the variables.
* As soon as the first variable is connected, the list is filled with a template for each string list entry.

#### Example 1

You can use a Label control inside the template which exports its text property to the template, to name each row.

* Create a string list variable with all the labels that are needed and in the order in which you want them to appear in the list.
* Connect the variable to the Text parameter of the Template List.

#### Example 2

There is a control inside the template, e.g., a switch with an exported Value parameter.

* Create a string list variable with the different parameter scopes that you want to control, e.g., the Mute state of different layers within a program.
* Connect the variable with the switch Value parameter of the Template List.

[Jump to Top ](#template-list)

### Switching the Scope for Controls outside the Template List

One useful usage of the Template List is to manage different articulations of an instrument and to use the list to change the scope for controls that exists only once one the macro page but need to control the different articulations, for example. In this case, you can use the Value property of the Template List which delivers the index of the selected row.

* Create a string list "LayerSelect" variable with an entry for each articulation layer.
* Add the different scopes for each articulation to the string list.
* Add a Template List.
* Specify the source template for the Template List.
* Connect the template parameters (delivered by the source template) using further string list variables defining the different parameters.
* Set the Value property of the Template List to the string list variable (@LayerSelect). This way, the list index can change the scope.
* Add a group and set the Scope to "LayerSelect". Now the group scope changes with the the selection in the Template List.
* Add controls to the group and connect them to HALion parameters. Use only the parameters, not their path information, which is delivered by the group scope.
* When clicking inside a Template List row, the selection changes the focus of the connected control group and you modify each articulation individually.

[Jump to Top ](#template-list)

### Showing the Focus in the List

To visualize which entry of the Template List currently has the focus you can use the Focus Var property. It works in combination with an element that needs to be set up inside the source template.

#### Example 1

**An animation to show a focus rectangle:**

* Set Focus Var of the Template List to "@SelectedRow".
* Add an animation with two frames to the source template. The second frame should show a colored outline rectangle, for example.
* Set the Value property of the animation to @SelectedRow", too.
* When clicking inside a Template List row, the animation of the corresponding row switches to the second frame which shows the colored rectangle.

#### Example 2

**A stack to change the whole appearance of a Template List row:**

* Set Focus Var of the Template List to "@SelectedRow".
* Add a Stack.
* Group the existing controls of the source template and place the group inside the stack.
* Duplicate the group and modify the appearance of the controls of the second group.
* Set the value property of the stack to "@SelectedRow", too.
* When clicking inside a Template List row, the stack of the corresponding row switches to the second group and shows the modified version.

[Jump to Top ](#template-list)
