/* ANCHOR: all */

// ANCHOR: function
>**removeFromParent()**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to remove an element in the **Program Tree** from the parent element. The function can remove elements of the type [Layer](./Layer.md), [Zone](./Zone.md), [MidiModule](./MidiModule.md), [Bus](./Bus.md) and [Effect](./Effect.md). It can even remove the script module that calls the function.

**Available in:** Controller.
// ANCHOR_END: description

#### Example

// ANCHOR: example
```lua
-- Remove the second child element.

childs = this.program:findChildren(true)
if childs[2] then
    childs[2]:removeFromParent()
end

-- Remove the program bus.

bus = this.program:getBus("Program-Bus")
if bus then
    bus:removeFromParent()
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */