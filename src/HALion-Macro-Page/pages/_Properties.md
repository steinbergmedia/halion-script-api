// ANCHOR: alignment
|**Alignment**|Defines how the text is aligned. You can choose from the following settings:<ul><li>**Align Left:** Aligns the text to the left side.</li><li>**Align Center (Horizontal):** Aligns the text to the horizontal center.</li><li>**Align Right:** Aligns the text to the right side.</li><li>**Align Top:** Aligns the text to the top.</li><li>**Align Center (Vertical):** Aligns the text to the vertical center.</li><li>**Align Bottom:** Aligns the text to the bottom.</li></ul>|
// ANCHOR_END: alignment

// ANCHOR: attach
|**Attach**|Defines how an element behaves, when its parent element is resized. You can set the following parameters: <ul><li>**Left:** If the parent element is resized, the element remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent element is resized, the element moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent element is resized, the element remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent element is resized, the element moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent element is resized, the element is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent element is resized, the element is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
// ANCHOR_END: attach

// ANCHOR: bitmap
|**Bitmap**|Bitmap refers to a [Bitmap](./Bitmap.md) resource which can be:<ul><li>An individual bitmap file in png or bmp format defined as resource.</li><li>A section, specifying a region within a larger source bitmap.</li></ul>You can either select an existing resource or drop an image file onto the text field. In this case, the corresponding resource is created and set as reference.|
// ANCHOR_END: bitmap

// ANCHOR: font
|**Font**|Allows you to select which [Font](./Font.md) resource to be used to display the text.|
// ANCHOR_END: font

// ANCHOR: margin
|**Margin**|**Left, Top, Right, Bottom:** As soon as a margin is set, the margin area is not stretched or tiled, but only the area outside. This can be used to define frames, for example, where the four corners of the bitmap are preserved in size and only the rest of the bitmap is stretched.|
// ANCHOR_END: margin

// ANCHOR: name
|**Name**|The name of the element. This name will be displayed in the GUI tree.|
// ANCHOR_END: name

// ANCHOR: position-size
|**Position/Size**|**Position X, Position Y, Width, Height:** Position and size of the element in pixels. Position X/Y defines the position of the upper left corner.|
// ANCHOR_END: position-size

// ANCHOR: scalable
Activate this if you want to be able to resize the element. The assigned [Bitmap](./Bitmap.md) resources are resized according to the Scale Mode that is defined for the respective [Bitmap](./Bitmap.md) resource.
// ANCHOR_END: scalable

// ANCHOR: scale-mode
|**Scale Mode**|This mode defines how a bitmap is adapted in size when the control that is using it is set to Scalable and sized smaller or larger than the original bitmap.<ul><li>**Stretch**: By default, scale mode is set to stretch, which means that the bitmap is drawn smaller or larger.</li><li>**Tile**: This means that the original bitmap will be drawn repeatedly as soon as the size of the control exceeds the size of the original bitmap.</li><li>**Tile Border**: This mode only draws the area defined by the margin settings repeatedly and leaves the inner area empty.</li></ul>|
// ANCHOR_END: scale-mode

// ANCHOR: show-value
|**Show Value**|Activate this if you want to display a tooltip with the current parameter value when using the control. This option can be exported to the template level. The exported parameter can then be activated by setting it to ``true`` (the default is ``false``).|
// ANCHOR_END: show-value

// ANCHOR: tooltip
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
// ANCHOR_END: tooltip

// ANCHOR: value
|**Value**|Drag and drop a parameter from the Parameter List to this text field to establish a connection. The assigned parameter will be displayed. Alternatively, you can export the property, which can then be used as a template parameter on a template instance.|
// ANCHOR_END: value