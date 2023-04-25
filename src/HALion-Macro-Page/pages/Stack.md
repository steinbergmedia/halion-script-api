/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Stack

### Description

A Stack allows you to create switchable subpages or sections. Each child of the stack is considered as a view that is shown exclusively, depending on the value of the stack. Most of the time, stacks are controlled by radio switches, providing one switch per stack view. If you activate the Fade option, you can add a blending effect when switching between views. If you want to connect the stack value only to a radio switch group to change the visibility of pages on the UI, without connecting the value to an engine or script module parameter, you can define an integer variable, for example Var_Pages. Then set the value property of the stack to Var_Pages and do the same for the radio group switches.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Stack.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
|**Value**|Drag and drop a parameter from the **Parameter List** to this text field to establish a connection. The assigned parameter will be displayed. Alternatively, you can export the property, which can then be used as a template parameter on a template instance.|
|**Style**|**Fade:** Activate this option if you want to blend views when switching.|
