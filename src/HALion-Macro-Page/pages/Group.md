# Group

### Description

A Group has no graphical representation and only serves as a container for other controls and templates. It can be added manually to the GUI Tree and then be positioned, sized, and filled with objects or it can be created automatically using the group command from the context menu on selected tree items. The size of a group is automatically adapted when objects are added, but it can also be adjusted manually. Furthermore, you can specify a scope for a group, which allows you to let all controls inside this group only affect a specific target.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Group.|
|**Scope**|Allows you to define which part of the Program Tree is affected by the controls inside the group.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
