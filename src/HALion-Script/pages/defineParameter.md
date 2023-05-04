/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# defineParameter

---

**On this page:**

[[_TOC_]]

---

## Description

Function to specify a parameter with the specified name and characteristics. The parameters you define can be used to configure the script module and save its state with the program. They are shown in the **Parameter List** from where you can connect them to controls on the macro page. For more details see [Creating Parameters](./Creating-Parameters.md).

**Available in:** Controller.

{{#include ./_Parameters.md}}

[Jump to Top](#defineparameter)

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**name**|The name of the parameter.|string|
|**longName**|The long name of the parameter, e.g., the name of the tool tip. If the argument is ``nil`` or not set, the ``name`` will be used.|string, optional|
|**default**|The default value of the parameter. The argument defaults to 0 if not set.|number, optional|
|**min**|The minimum value of the parameter. The argument defaults to 0 if not set.|number, optional|
|**max**|The maximum value of the parameter. The argument defaults to 100 if not set.|number, optional|
|**increment**|The step size of the parameter as floating point value. Set this to 1 for integer steps. The argument defaults to 0 (floating point value, no steps) if not set.|number, optional|
|**strings**|Creates a parameter with an indexed string array. The index starts with 0 or 1, depending on how you initialize the table. The string values of the array define the text representation of the parameter in the **Parameter List**.|array, optional|
|**bool**|Creates a boolean parameter. This argument also defines the default value of the parameter.|bool, optional|
|**string**|Creates a parameter with a string value. You can change the string by assigning a new string value to the parameter.|string, optional|
|**table**|Creates a parameter with a table as value.|table, optional|
|**parameterDefinition**|Creates a parameter with the behavior of the set [ParameterDefinition](./ParameterDefinition.md). You can use this to clone the behavior of existing parameters.|[ParameterDefinition](./ParameterDefinition.md), optional|
|**onChanged**|Callback function that is called if the value of the parameter has changed. See [Parameter Change Callback](./Creating-Parameters.md#parameter-change-callback) for more details.|function, optional|

### Example 1

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
```

[Jump to Top](#defineparameter)

## Additional Named Arguments

If you create a parameter by named arguments, you get access to the following additional arguments. See [Definging Parameters by Named Arguments](./Creating-Parameters.md#defining-parameters-by-named-arguments) for more details.

{{#include ./Creating-Parameters.md:additional-named-arguments}}

### Example 2

{{#include ./Creating-Parameters.md:additional-named-arguments-example}}

[Jump to Top](#defineparameter)

**See also:** [getParameter](./getParameter.md), [setParameter](./setParameter.md)