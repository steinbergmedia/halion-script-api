/* ANCHOR: all */

// ANCHOR: function
>**getLayer(nameOrPosition)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the [Layer](./Layer.md) object of a layer in the specified layer. For example, ``this.parent`` specifies the parent layer of the script module as the layer to be searched in. The function does not search in sublayers. A particular layer can be searched by name or position. The position is the number indexing the layers in the specified layer. If several layers share the same name, only the first match will be returned. If no argument is set, the function returns the first layer it finds.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrPosition**|The name or position of the layer. Set this to ``nil`` to deactivate the search filter.|string or number, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the [Layer](./Layer.md) object of the found layer. Returns ``nil`` if no layer is found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Locate the first layer in the program and print its name.

layer = this.program:getLayer()
 
if layer then
    print(layer.name)
else
    print("Could not find a layer!")
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */