### Numeric

>**defineParameter(name, longName, default, min, max, increment, changeCallback)**

Creates a numeric parameter. The ``default`` argument defines the value that the parameter will default to. The ``min`` and ``max`` arguments define the value range of the parameter. The ``increment`` argument defines the step size in which the parameter value can be adjusted. The arguments ``default``, ``min``, ``max``  and ``increment`` can be any integer or floating point value. How many digits are shown after the decimal point for a value string of a parameter is determined by the value of the ``increment`` argument. For example:

|Value|Description|
|:-|:-|
|``increment = 1``|The parameter will be an integer value and its value string will display no digits after the decimal point.|
|``increment = 0.001``|The parameter will be a floating point value and its value string will display three digits after the decimal point.|
|``increment = 0``|The parameter will be a floating point value and its value string will display two digits after the decimal point.|

The automatic formatting of a value can be overridden with the ``format`` argument. See [Additional Named Arguments](./Creating-Parameters.md#additional-named-arguments) for more details.

### Indexed String Array

>**defineParameter(name, longName, default, strings, changeCallback)**

Creates a parameter with integer indices that have a text representation given by the string values of an array. The ``default`` argument defines the index value that the parameter will default to. The ``strings`` argument must be an array with string values starting with index 0 or 1.

### Boolean

>**defineParameter(name, longName, bool, changeCallback)**

Creates a boolean parameter. The ``bool`` argument also defines the default value of the parameter.

### String

>**defineParameter(name, longName, string, changeCallback)**

Creates a parameter with a string value. You can change the string by assigning a new string value to the parameter.

### Table

>**defineParameter(name, longName, table, changeCallback)**

Creates a parameter with a table as value. The ``name`` argument of the parameter also defines the name of the table. You can access the values of the table using the regular methods, e.g., dot notation.

### By Parameter Definition

>**defineParameter(name, longName, parameterDefinition, changeCallback)**

Creates a parameter with the behavior of the specified [ParameterDefinition](./ParameterDefinition.md). You can use this to clone the behavior of existing parameters.

### By Named Arguments

>**defineParameter { name = "p", longName = "param", default = 0, min = 0, max = 100, increment = 0.01, onChanged = callback, type = "float", format = "%.2f", readOnly = false, writeAlways = false, automatable = true, persistent = true }**

Creates a parameter by named arguments. The only argument to the function is a table with the key/value pairs that define the parameter. The additional keys type, format, readOnly, writeAlways, automatable, processorCallback and persistent give you control over more advanced features. They can only be set with named arguments. See [Defining Parameters by Named Arguments](./Creating-Parameters.md#defining-parameters-by-named-arguments) for more details.