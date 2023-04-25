/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Range Slider

### Description

The Range Slider allows you to control two parameters with one control. You can drag the slider handle at its two ends, each representing one parameter. A typical example for the use of such a slider is a control for velocity or key ranges. The Range Slider can also be used as a scroll bar when it is connected to a scroll view or envelope. In this case, the "No Resize" option allows you to deactivate any modification to the ends of the slider handle. The size of the handle is then determined by the zoom level of the scroll view. You can choose between horizontal and vertical range sliders, decide whether the slider should jump to the click position or always move relatively, and you can invert the slider behavior. The Range Slider can also be resized with its handle and track bitmaps, according to the scale modes that are defined for the respective bitmap resources. The slider can also be used with a track bitmap which is drawn in front of and behind the handle.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Range Slider.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
|**Low Value**|Allows you to connect the first parameter, e.g., Velocity Low of a layer.|
|**High Value**|Allows you to connect the second parameter, e.g., Velocity High of a layer.|
|**Show Value**|Activate this option if you want to display a tooltip with the current parameter value when using the knob. This option can be exported to the template level. The exported parameter can then be activated by setting it to ``true`` (the default is ``false``).|
|**Style**|<ul><li>**Vertical:** Creates a vertical range slider. The default setting is horizontal.</li><li>**Jump:** The entire slider handle jumps to the click position. By default, only one of the handle ends (lower/upper or right/left) jumps to the click position.</li><li>**Invert:** Inverts the slider behavior.</li><li>**No Resize:** By default, the slider handle can be adjusted on both ends. If you activate this option, the slider handle ends cannot be dragged to another position. This can be used to create scroll bar controls, where the size of the Range Slider changes depending on the zoom level and only the position can be changed.</li><li>**Read-Only:** Activate this option if you want to use the Range Slider as a display-only parameter which cannot be edited.</li><li>**Push:** Activate this option if you want the upper slider to follow if you raise the value of the lower slider above the value of the upper slider. Moving the lower slider back below the upper slider will also move the upper slider until it reaches its original value. This behavior also applies if you lower the value for the upper slider below the value of the lower slider.</li></ul>|
|**Handle**|Specifies the bitmap to be used as slider handle.|
|**Track**|Specifies the bitmap to be used for the area that is not covered by the handle.|
