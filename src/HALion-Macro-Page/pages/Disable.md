# Disable

### Description

The Disable control allows you to put all child controls out of function. To reflect that state, all children are drawn grayed out and semitransparent. To disable the control, connect a parameter to the value property and specify the value that should cause the disabling. You can also specify multiple values, for example, to disable a parameter that should only be available for specific states of another parameter. If you want the control to be enabled for a particular value and disabled for the rest of the values, activate the Enable option.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Disable control.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
|**Value**|Drag and drop a parameter from the **Parameter List** to this text field to establish a connection. The assigned parameter will be displayed. Alternatively, you can export the property, which can then be used as a template parameter on a template instance.|
|**Enable**|Activate this option if you want to enable the control for the specified values.|
|**Hide**|Activate this option if you want to hide the control for the specified values.|
|**0-31**|Activate the values for which the you want to disable (or enable, depending on the mode) the control.|