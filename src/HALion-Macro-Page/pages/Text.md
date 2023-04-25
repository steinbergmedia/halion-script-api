# Text

### Description

The text control can be used to edit either strings or values, depending on the type of parameter that it is connected to. If a parameter is defined as a value, you can increase and decrease the value by clicking on the text control and dragging up and down. For string parameters, you can enter the string. With Fit String and Fit Path, there are two options to automatically shorten a string if it is getting too long to be displayed completely. For value parameters, you can add a unit that is displayed behind the value. If you want increment and decrement buttons, take the combined value box template, which contains a text control with up and down buttons.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Text control.|
|**Position/Size**|Position and size of the element in pixels. Pos x/y = Position of upper left corner.<p>**Pos x, Pos y, Width, Height.**</p>|
|**Attach**|<ul><li>**Left:** If the parent is resized, the control remains attached to left edge, with the specified ratio.</li><li>**Right:** If the parent is resized, the control moves relatively to the right edge, with the specified ratio.</li><li>**Top:** If the parent is resized, the control remains attached to top edge, with the specified ratio.</li><li>**Bottom:** If the parent is resized, the control moves relatively to the bottom edge, with the specified ratio.</li><li>**Left + Right:** If the parent is resized, the control is resized horizontally relatively to the left and right edges, with the specified ratio.</li>|<li>**Top + Bottom:** If the parent is resized, the control is resized vertically relatively to the top and bottom edges, with the specified ratio.</li></ul>|
|**Tooltip**|Text that appears as a tooltip when the mouse hovers over the element.|
|**Style**|<ul><li>**Fit Strings:** Activate this option if you want a string to be shortened automatically if it cannot be fully displayed in the edit field. This method first removes spaces, then vowels.</li><li>**Fit Path:** Activate this option if you want a path string to be shortened automatically if it cannot be fully displayed in the edit field. This method keeps the first and last characters of the string and puts "..." in between to indicate that letters were omitted.</li><li>**Wordwrap:** Activate this option if you want to write text in more than one line. The text continues on the next line as soon as it does not fit into the current line.</li><li>**Read-Only:** Activate this option if you want to use the text as a display-only parameter which cannot be edited.</li></ul>|
|**Font**|Allows you to select the [Font](./Font.md) resource that is used to display the text.|
|**Units**|A unit, such as milliseconds (ms) or decibel (dB), can be displayed with the value. Any string can be used. The value must be displayed in the correct value format to match the selected unit.|
|**Alignment**|</ul><li>**Left:** Aligns the text to the left side.</li><li>**Right:** Aligns the text to the right side.</li><li>**Center H:** Aligns the text to the horizontal center.</li><li>**Top:** Aligns the text to the top.</li><li>**Bottom:** Aligns the text to the bottom.</li><li>**Center V:** Aligns the text to the vertical center.</li></ul>|
