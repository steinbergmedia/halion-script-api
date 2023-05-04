/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Advanced Topics](./Advanced-Topics.md) /

# Creating Parameters

---

**On this page:**

[[_TOC_]]

---

You need parameters to connect the script module with controls on the macro page and to save the script module's state with the program. Before you can connect your script module with controls on a macro page, you must specify the parameters that you want to use in your script by calling the function [defineParameter](./defineParameter.md) for each of them. Once a parameter is defined, it is shown in the **Parameter List**. From this list, you can then connect it with a control on the macro page. When you save the program, the parameters that you defined for the script module are saved with it.

The function [defineParameter](./defineParameter.md) also creates a global variable that represents the value of the parameter in the script. You can use this global variable like any other variable in the script (see [Parameter vs. Global Variables](#parameters-vs-global-variables) for details).

## Defining Parameters

>**defineParameter(name)**

You define a parameter by calling the function [defineParameter](./defineParameter.md) with at least its name as the first argument. This name serves as name for the parameter in the **Parameter List** and as name for the global variable that represents the parameter in the script. The additional arguments of [defineParameter](./defineParameter.md) are optional and can be used to change the characteristics of the parameter (see [Parameter Characteristics](#parameter-characteristics) for details). If no further arguments are defined, the parameter will be a floating point value in the range from 0 to 100.

[Jump to Top ](#creating-parameters)

## Parameters vs. Global Variables
The function [defineParameter](./defineParameter.md) creates a global variable that represents the value of the parameter in the script. It should be noted that:

- The rules for the naming and scope of global variables also apply for parameters.
- You can change the value of a parameter by assigning a new value to the corresponding global variable.
- The parameters that you defined for your script module are saved with the program, as opposed to global variables, which are not saved automatically.

The following example shows that parameters can be used just like global variables. After the parameter Scale has been defined, it is used to replace the note-on velocity. The value of Scale is changed by assigning the value of the last incoming MIDI controller to it.

#### Example 1

```lua
-- Change the parameter Scale through a MIDI controller and use its value to replace the note-on velocity.
 
-- Initialize variables.

min = 0
max = 100
maxVel = 127
defVel = 100
default = defVel / maxVel * max
maxCC = 127
 
-- Define Scale using the previous variables.

defineParameter("Scale", nil, default, min, max)
 
-- Use the value of Scale to replace the note-on velocity.

function onNote(event)
    event.velocity = maxVel * Scale / max
    postEvent(event)
end
 
-- Change the value of Scale through the last incoming MIDI controller.

function onController(event)
    Scale = event.value / maxCC * max
end
```
[Jump to Top ](#creating-parameters)

## Parameter Characteristics

How a parameter behaves depends on its characteristics. You determine the characteristics of a parameter with the arguments of [defineParameter](./defineParameter.md). To create a parameter with specific characteristics, the arguments must be set in the order in which they are shown in the following syntax examples.

{{#include ./_Parameters.md}}

#### Example 2

```lua
-- Showcase different parameters.
 
-- Initialize variables.

maxVelocity = 127
 
-- Change callback of the parameter "Label".

function nameChanged()
    print("name changed to", Label) --Print the value of the parameter.
end
 
-- Initialize parameters.

defineParameter("Scale", nil, 100)                                          -- Parameter with default 100 and range 0 to 100.
defineParameter("Offset", nil, 0, -100, 100, 1)                             -- Bipolar parameter with integer steps.
defineParameter("Pan", nil, 0, -100, 100, 0.1)                              -- Bipolar parameter with 0.1 steps.
defineParameter("Mode", nil, 1, { "Off", "Normal", "Hyper" })               -- Indexed string array.
defineParameter("Enable", "Enable Filter", true)                            -- Switch with long name.
defineParameter("Label", nil, "untitled", nameChanged)                      -- String parameter.
defineParameter("Intervals", nil, { 0, 4, 7 })                              -- Table parameter.
defineParameter("Volume", nil, this.parent:getParameterDefinition("Level")) -- Parameter with the same behavior as the "Level" parameter of the parent layer.

-- Use the parameters Scale and Intervals to play a chord with fixed velocity.

function onNote(event)
    fixedVelocity = maxVelocity * Scale / 100
    local id1 = playNote(event.note + Intervals[1], fixedVelocity)
    local id2 = playNote(event.note + Intervals[2], fixedVelocity)
    local id3 = playNote(event.note + Intervals[3], fixedVelocity)
end
```

[Jump to Top ](#creating-parameters)

## Parameter Change Callback

The change callback is only called if the value of the parameter was changed from the user interface, e.g., by adjusting the corresponding control on the macro page, or by calling [setParameter](./setParameter.md). It is not called if the value was changed through assigning a value from inside the script. The following example revisits [Example 1](#example-1) to demonstrate this:

#### Example 3

```lua
-- Change the parameter Scale through MIDI controller and use its value to replace the note-on velocity.
-- The current value of Scale is printed only if changed from UI, e.g., go to the Parameter List to adjust Scale
 
-- Initialize variables.

min = 0
max = 100
maxVel = 127
defVel = 100
default = defVel / maxVel * max
maxCC = 127
 
-- This callback function will only be called if you adjust Scale from the UI.

function valueChanged()
    print("Value of Scale changed to:", Scale)
end
 
-- Define Scale with the previous variables.

defineParameter("Scale", nil, default, min, max, valueChanged)
 
-- Use the value of Scale to replace the note-on velocity.

function onNote(event)
    event.velocity = maxVel * Scale / max
    postEvent(event)
end
 
-- Change the value of Scale through the last incoming MIDI controller.

function onController(event)
    -- Assigning a value to Scale will not call the callback function.
    Scale = event.value / maxCC * max
end
```

[Jump to Top ](#creating-parameters)

## Change Callback with Anonymous Function

In [Example 2](#example-2) the function nameChanged is declared before the associate parameter is defined. This is necessary for [defineParameter](./defineParameter.md) in order to detect that the argument nameChanged is a function. If you want to declare the callback function after defining the corresponding parameter, you must call the callback function within an anonymous function. As the name suggests, an anonymous function is a function without a name.

#### Example 4

```lua
-- Define a string parameter.

defineParameter("Name", nil, "untitled", function() nameChanged() end)

-- If nameChanged is called inside an anonymous function, it can be declared after defineParameter.

function nameChanged()
    print("name changed to", Name) -- Print the value of the parameter.
end
```

[Jump to Top ](#creating-parameters)

## Defining Parameters by Named Arguments

When calling [defineParameter](./defineParameter.md) with several arguments, the arguments are matched by their position and the associated values are passed on to the function. For this reason, the arguments of [defineParameter](./defineParameter.md) must match the exact order and position when calling the function. Alternatively, you can set the arguments with the keys and values of a table. This method of passing arguments and values to a function is called *named arguments*.

Named arguments have the advantage that they can be set in any order you want and that optional or additional arguments can be left out without destroying the predefined order and position of the arguments to that function. The following example shows the parameters from [Example 2](#example-2) created with named arguments.

#### Example 5

```lua
-- Different parameters created with named arguments.
 
-- Change callback of the parameter "Label".

function nameChanged()
    print("name changed to", Label) --Print the value of the parameter.
end
 
-- Parameter with default 100 and range 0 to 100.

defineParameter{
    name = "Scale",
    default = 100
}
 
-- Bipolar parameter with integer steps.

defineParameter{
    name = "Offset",
    default = 0,
    min = -100,
    max = 100,
    increment = 1,
}
 
-- Bipolar parameter with 0.1 steps.

defineParameter{
    name = "Pan",
    default = 0,
    min = -100,
    max = 100,
    increment = 0.1,
}
 
-- Indexed string array.

defineParameter{
    name = "Mode",
    default = 1,
    strings = { "Off", "Normal", "Hyper" },
}
 
-- Switch with long name.

defineParameter{
    name = "Enable",
    longName = "Enable Filter",
    default = true,
}
 
-- String parameter.

defineParameter{
    name = "Label",
    default = "untitled",
    onChanged = nameChanged,
}
 
-- Table parameter.

defineParameter{
    name = "Intervals",
    default = { 0, 4, 7 },
}
```

>&#10069; Creating a parameter by [ParameterDefinition](./ParameterDefinition.md) is not supported when using named arguments.

[Jump to Top ](#creating-parameters)

## Additional Named Arguments

If you create a parameter by named arguments, you get access to these additional arguments:

<!-- ANCHOR: additional-named-arguments -->
|Argument|Description|Value Type|
|:-|:-|:-|
|**type**|The value type of the parameter (integer, float, boolean, string, variant, or envelope). The type must match the default and increment arguments.|string, optional|
|**format**|Formats the value string of a float value using the provided arguments. Only the format specifiers for float values are supported, i.e., e, E, f, g, or G. Other format specifiers are not supported. This overrides any automatic formatting from the ``increment`` argument.|string, optional|
|**readOnly**|The parameter can only be changed from the script if this is set to ``true``. The argument defaults to ``false`` if no value is set.|bool, optional|
|**writeAlways**|A parameter does not call its change callback if its value is set without being changed. Set this to ``true`` if you want to guarantee that the change callback of the parameter is called. The argument defaults to ``false`` if not set.|bool, optional|
|**automatable**|Set this to ``false`` if you do not want the parameter to be automated. The argument defaults to ``true`` if not set.|bool, optional|
|**processorCallback**|The parameter change callback will be executed in the processor context with high accuracy, if this is set to ``true``. For example, this is required for automated script parameters to update correctly when using Render in Place or Export Audio.  If no processor exists, the call back is still run in the controller context.|bool, optional|
|**persistent**|The parameter will not be restored from the VST preset if this is set to ``false``. The argument defaults to ``true`` if not set.|bool, optional|

The arguments readOnly, writeAlways and automatable are helpful if you have a parameter that is used only for indication, but not for entering values.
<!-- ANCHOR_END: additional-named-arguments -->

#### Example 6

<!-- ANCHOR: additional-named-arguments-example -->
```lua
-- The following parameter is read only, not automatable and not persistent.

defineParameter {
    name = "deltaTime",
    longName = "Delta Time",
    default = 0,
    min = 0,
    max = 2^31,
    type = "float",
    format = "%.3f ms",
    readOnly = true,
    automatable = false,
    persistent = false,
}
   
-- Measure the time between subsequent notes.

function onNote(event)
    postEvent(event)
    t2 = getTime()
    if t1 then
        deltaTime = t2 - t1
    end
    t1 = t2
end
 
-- The following parameter change callback is executed in the processor context with high accuracy.

function onP1changed()
   this.parent:setParameterNormalized("Level", P1 / 100)
end
 
defineParameter{name = "P1", min=0, max=100, onChanged = onP1changed, processorCallback = true}
```
<!-- ANCHOR_END: additional-named-arguments-example -->

[Jump to Top ](#creating-parameters)