/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Wavetable

### Description

The Wavetable control allows you to display the resulting wave of the wavetable oscillator in real-time. You can connect it directly to the oscillator and configure the line width and colors.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Wavetable control.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
|**Play Data**|Allows you to connect the Play Data parameter of the wavetable oscillator.|
|**Line Width**|Adjusts the width of the waveform line from 1 to 3 pixels.|

### Colors

|Poperty|Description|
|:-|:-|
|**Line 1-8**|The color of the wavetable display. The first color defines the main wave, 2 to 7 can be used to specify different colors for the additional waves of the unison voices.|
