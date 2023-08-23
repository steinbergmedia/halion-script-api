// ANCHOR: lua-expressions

// ANCHOR: paragraph1
An expression begins with ``$`` followed by ``()``. Everything inside the brackets will be evaluated and returns the effective value for the property.

>**$(expression)**

You can use the following variables in Lua expressions:

|Variable|Description|
|:-|:-|
|**N**|The normalized value (0 to 1.0) of the control itself.|
|**V**|The value as sent by the connected engine parameter.|
|**S**|A string as sent by the connected parameter.|
// ANCHOR_END: paragraph1

// ANCHOR: paragraph2
The string of a S variable is set either by a stringlist variable or by MIDI script or UI script parameters. The ability to use the string output of a parameter allows you to transmit even a full sequence of values, such as the path of an object, for example.
// ANCHOR_END: paragraph2

// ANCHOR_END: lua-expressions