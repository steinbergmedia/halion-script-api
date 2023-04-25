/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Meter

### Description

The Meter control allows you to display incoming values as a meter bar. It displays a background image and a bitmap for the lit state of the meter. The bitmap for the lit state is drawn clipped on top of the background image. The size of the clipped region depends on the current value. The Meter can either be drawn horizontally or vertically. The vu meter can be directly connected to parameter outputs of script modules, for example. The vu meter is a control that is optimized for drawing speed and therefore, it must be placed on the topmost level on the macro page, no other objects must be layered on top. To display the meter and peak outputs of HALion's busses, a special vu meter template is required that contains two meters and a special logic so that the template can be directly connected to any bus. Please use one of these preconfigured meter templates that are part of the HALion Basic Controls library and set the bus parameter to the desired bus, for example @bus:0 for the first bus in the program. The graphical resources and sizes can be customized by modifying these templates.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Meter.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
|**Value**|Drag and drop a parameter from the **Parameter List** to this text field to establish a connection. The assigned parameter will be displayed. Alternatively, you can export the property, which can then be used as a template parameter on a template instance.|
|**Peak Value**|Allows you to connect a parameter that delivers a peak hold value.|
|**Style**|**Vertical:** Activate this option if you want to display a vertical meter instead of the standard horizontal meter.|
|**Bitmap**|Allows you to assign the bitmap that is used for the lit meter bar.|
|**Background**|Allows you to assign the bitmap that is used as background for the meter (for example, a dimmed version of the lit meter bar bitmap).|
