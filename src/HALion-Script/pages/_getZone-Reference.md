/* ANCHOR: all */

// ANCHOR: function
>**getZone(nameOrPosition)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the [Zone](./Zone.md) object of a zone in the specified layer. For example, ``this.parent`` defines the parent layer of the script module as the layer to be searched in. This function does not search in sublayers. A particular zone can be searched by name or position. The position is the number indexing the zones in the specified layer. If several zones share the same name, only the first match will be returned. If no argument is set, the function returns the first zone it finds.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrPosition**|The name or position of the zone. Set this to ``nil`` to deactivate the search filter.|string or number, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the [Zone](./Zone.md) object of the found zone. Returns ``nil`` if no zone is found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Get the first zone in the program and print its name.

zone = this.program:getZone()
 
if zone then
    print(zone.name)
else
    print("Could not find a zone!")
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */