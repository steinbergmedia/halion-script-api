/* ANCHOR: all */

// ANCHOR: function
>**getBus(nameOrPosition)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the [Bus](./Bus.md) object of a bus in the specified [Element](./Element.md) object. For example, ``this.parent`` specifies the parent of the script module as the [Element](./Element.md) object to be searched in. This function does not search in subelements. A particular bus can be searched by name or position. The position is the number indexing the busses in the specified [Element](./Element.md) object. If several busses share the same name, only the first match will be returned. If no argument is set, the function returns the first bus it finds.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrPosition**|The name or position of the bus. Set this to ``nil`` to deactivate the search filter.|string or number, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the [Bus](./Bus.md) object of the found bus. Returns ``nil`` if no bus is found. 
// ANCHOR_END: return-values

#### Example

```lua
-- Locate the first bus in the program and print its name.

bus = this.program:getBus()
 
if bus then
    print(bus.name)
else
    print("Could not find a bus!")
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */