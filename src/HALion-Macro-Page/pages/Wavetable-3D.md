/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Controls](./Controls.md) /

# Wavetable 3D

---

**On this page:**

[[_TOC_]]

---

## Description

The Wavetable 3D control can be connected directly to the oscillator and display a three-dimensional representation of the wavetable in real time. You can configure the appearance of the representation – that is, the shininess of its surface, its brightness, the scaling factors, view angles, lines and colors, etc. – using the available parameters of the control.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
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

## Colors

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