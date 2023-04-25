# XY

### Description

The XY control allows you to control two parameters with one two-dimensional control. You can connect a parameter to the X Value, which is then controlled by horizontal movements of the handle and a parameter to the Y Value which is controlled by the vertical movements of the handle. A bitmap can be assigned to the Handle property. The XY control is transparent, which means that only the handle is drawn on the macro page. If you need a background to indicate the area that is used by the control, you can either put an image behind it or create a template and add a background image there.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the XY control.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
|**X Value**|Drag and drop a parameter from the **Parameter List** to this text field to establish a connection. The assigned parameter will be displayed. Alternatively, you can export the property, which can then be used as a template parameter on a template instance.|
|**Y Value**|Drag and drop a parameter from the **Parameter List** to this text field to establish a connection. The assigned parameter will be displayed. Alternatively, you can export the property, which can then be used as a template parameter on a template instance.|
|**Click Value**|Allows you to transmit the information that the XY control has been clicked. The value changes from 0 to 1. The main purpose is to connect it to a UI script that needs to react to mouse clicks. It is not intended to be connected to HALion engine parameters.|
|**Handle**|Allows you to assign a bitmap that is used as a handle.|