# Wavetable 3D

---

**On this page:**

[[_TOC_]]

---

### Description

The Wavetable 3D control allows you to display a three-dimensional representation of the wavetable in real-time. The display allows the rendering of parameters that define the material of the view. You can connect it directly to the oscillator and configure scaling factors, view angles, lines and colors.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Wavetable 3D control.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
|**Play Data**|Allows you to connect the Play Data parameter of the wavetable oscillator.|
|**ScaleX**|Specifies the scaling factor of the width of the 3D representation.|
|**ScaleY**|Specifies the scaling factor of the height of the 3D representation.|
|**ScaleZ**|Specifies the scaling factor of the depth of the 3D representation.|
|**Observe A**|Rotates the 3D representation horizontally. This property can be cotrolled by dragging the display with the mouse and/or with a connected control.|
|**Observe H**|Rotates the 3D representation vertically. This property can be cotrolled by dragging the display with the mouse and/or with a connected control.|
|**Ambient**|Specifies the amount of ambient light.|
|**Diffuse**|Specifies the general brighteness of the material.|
|**Specular**|Specifies the intensity of specular highlights of the material.|
|**Shininess**|Specifies the size of specular highlight areas of the material.|
|**Lines**|Can be activated to draw a line for each wave of the wavetable.|
|**Line Width**|Adjusts the width of the lines from 1 to 3 pixels.|
|**Loop**|Can be activated to draw a line for the loop start and end markers.|

[Jump to Top ](#wavetable-3d)

### Colors

|Poperty|Description|
|:-|:-|
|**Focus**|The color of the wave line that has the focus in the wavetable editor.|
|**Back**|The color of the display background.|
|**Line**|The color of the wave lines.|
|**Play**|The color of the wave line at the current playback position.|
|**Min**|The color for the lowest amplitude value of the waveform.|
|**Max**|The color for the highest amplitude value of the waveform.|
|**Loop**|The color of the loop lines.|

[Jump to Top ](#wavetable-3d)