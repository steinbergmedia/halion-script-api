# Font

### Description

Font resources are used to define different text styles which are referenced by labels, text fields, and other controls that display text.

Each resource specifies which of the system fonts (available for both Mac and PC) are used, which font size, color, alpha channel value, and style (bold, italic, underlined). If you want to use a custom truetype font, you can specify this truetype font file in the custom font field. Even when you are working with custom fonts, it is still good practice to specify a system font to function as fallback solution for characters that might not exist in a specific truetype font.

>&#10069; When distributing content sets that include truetype fonts, only include those fonts that can be freely distributed. Do not include fonts that need to be licensed.

>&#10069; Truetype fonts need to be based on Unicode tables to work correctly.

### Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the Font resource.|
|**Font**|Allows you to select the system font to be used. These fonts are available on Windows and Mac or have their equivalents on Mac. If a custom truetype font is to be be used instead, you can define it under Custom. In this case, the specified system family is only used as a fallback solution for characters that do not exist in the custom font file. For text edit controls that pop up a text edit field, the system font is also used to display the text during editing.|
|**Size**|Defines the font size in points.|
|**Style**|Defines the font style for the system font: bold, italic, underline.|
|**Color**|Colors can be defined in different ways:<ol><li>By setting a hex value, for example 202020 (red, green, blue).</li><li>By setting RGB values (red, green, blue).</li><li>By clicking on the color preview field and using the color picker.</li></ol><p>**Alpha:** Sets the transparency (256 fully opaque, 0 fully transparent). When adjusting the alpha value, the preview field blends against a light grey background. The resulting color in the macro page will look different, depending on the local background color.</p>**Color Picker:**<ul><li>The upper hue bar allows you to select the hue value.</li><li>The color field allows you to set saturation and value.</li><li>Right-click the color picker to open a context menu for further options (Copy, Paste, Reset color).</li><li>Show/Hide Color Values allows you to enter RGB or HSV values. The text controls can also be dragged to change values.</li></ul>|
|**Custom**|Allows you to add a custom font. Drag and drop a truetype file on the custom field or click the open icon to choose the location and file.|