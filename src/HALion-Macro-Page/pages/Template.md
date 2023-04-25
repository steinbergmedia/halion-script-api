/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Template

### Description

A template control represents an instance of a template. The number of available template parameters depends on the contents and setup of the template, i.e., the number of controls that are used in it and the number of control parameters that are exported. If a template has an attached UI script, additional script parameters can be exported.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the template control.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
|**Template Parameters**|In this section, all parameters that are exported by controls and templates from inside the template are displayed. When using a template, these exported parameters can be set or connected like standard properties.|
