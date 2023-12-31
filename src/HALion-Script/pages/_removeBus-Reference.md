/* ANCHOR: all */

// ANCHOR: function
>**removeBus(busOrPosition)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to remove a bus from the specified layer. For example, ``this.parent`` specifies the parent layer of the script module as the layer that contains the bus. The bus to be removed is determined by its [Bus](./Bus.md) object or its position. You can use [getBus](./getBus.md) or [findBusses](./findBusses.md) to determine the [Bus](./Bus.md) object. The position is the number that indexes the busses in the specified layer.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**busOrPosition**|The [Bus](./Bus.md) object or the position of the bus to be removed.|[Bus](./Bus.md) or number|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Remove all busses from the program.
    
busses = this.program:findBusses(true)

for i, bus in ipairs(busses) do
    this.parent:removeBus(bus)
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */