/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Tutorials & Guidelines](./HALion-Tutorials-Guidelines.md) / [How-tos](./How-tos.md) /

# Animating SVGs

---

**On this page:**

[[_TOC_]]

---

By harnessing the capabilities of Lua expressions, you can animate controls that incorporate Scalable Vector Graphics (SVGs). Through the manipulation of SVG properties using Lua expressions, you gain control over how the values of these properties are modified within the control itself. This enables you to create dynamic and visually appealing animations that enhance the user experience.

## Lua Expressions

An expression begins with ``$`` followed by ``()``. Everything inside the brackets will be evaluated and returns the effective value for the property.

>**$(expression)**

You can use the following variables in Lua expressions:

|Variable|Description|
|:-|:-|
|**N**|The normalized value (0 to 1.0) of  the control itself.|
|**V**|The value as sent by the connected engine parameter.|
|**S**|A string as sent by the connected parameter|

Strings are set either by a stringlist variable or by MIDI script or UI script parameters. The ability to use the string output of a parameter allows you to transmit even a sequence of values, such as the path of an object, for example.

## Examples

### Modifying the fill Property

#### Example VST Preset

* [Animating SVGs 1.vstpreset](../vstpresets/Animating%20SVGs%201.vstpreset)

|Property|Value|Description|
|:-|:-|:-|
|fill|rgb(0,0,0)|Static color, in this case black.|
|fill|rgb($(math.floor((1-N)\*255)),0,0)|The normalized value (0 to 1.0) of the control scales the red channel from 255 to 0. This creates a fade from red to black.|
|fill|rgb(<br>$(math.floor(N\*255)),<br>$(math.floor(N\*255)),<br>$(math.floor(N\*255))<br>)|The normalized value (0 to 1.0) of the control scales all channels from 0 to 255. This creates a fade from black and white.|
|fill|hsla (220,75%,62%,$(N))|The normalized value of the control scales the opacity from 0 to 1.0.|
|fill|$(S)|An animation control changes its color to the value delivered by the string output of a connected script parameter.|
