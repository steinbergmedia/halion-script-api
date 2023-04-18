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
|**type**|The value type of the parameter (integer, float, boolean, string, variant, or envelope). The type must match the ``default`` and ``increment`` arguments. See [Additional Named Arguments](./Creating-Parameters.md#additional-named-arguments) for more details.|string, optional|
|**format**|Formats the value string of a float value using the provided arguments. Only the format specifiers for float values are supported, i.e., e, E, f, g, or G. Other format specifiers are not supported. This overrides any automatic formatting from the ``increment`` argument. See [Additional Named Arguments](./Creating-Parameters.md#additional-named-arguments) for more details.|string, optional|
|**readOnly**|The parameter can only be changed from the script if this is set to ``true``. The argument defaults to ``false`` if not set. See [Additional Named Arguments](./Creating-Parameters.md#additional-named-arguments) for more details.|bool, optional|
|**writeAlways**|A parameter does not call its change callback if its value is set without being changed. Set this to ``true`` if you want to guarantee that the change callback of the parameter is called. The argument defaults to ``false`` if not set. See [Additional Named Arguments](./Creating-Parameters.md#additional-named-arguments) for more details.|bool, optional|
|**automatable**|Set this to ``false`` if you do not want the parameter to be automated. The argument defaults to ``true`` if not set. See [Additional Named Arguments](./Creating-Parameters.md#additional-named-arguments) for more details.|bool, optional|
|**processorCallback**|The parameter change callback will be executed in the processor context with high accuracy, if this is set to ``true``. For example, this is required for automated script parameters to update correctly when using Render in Place or Export Audio.  If no processor exists, the call back is still run in the controller context. See [Additional Named Arguments](./Creating-Parameters.md#additional-named-arguments) for more details.|bool, optional|
|**persistent**|The parameter will not be restored from the VST preset if this is set to ``false``. The argument defaults to ``true`` if not set. See [Additional Named Arguments](./Creating-Parameters.md#additional-named-arguments) for more details.|bool, optional|

[Jump to Top](#defineparameter)

## Example

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

**See also:** [getParameter](./getParameter.md), [setParameter](./setParameter.md)

[Jump to Top](#defineparameter)