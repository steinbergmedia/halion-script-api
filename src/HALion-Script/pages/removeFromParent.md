/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# removeFromParent

>**removeFromParent()**

## Description

Function to remove an element in the **Program Tree** from the parent element. The function can remove elements of the type [Layer](./Layer.md), [Zone](./Zone.md), [MidiModule](./MidiModule.md), [Bus](./Bus.md) and [Effect](./Effect.md). It can even remove the script module that calls the function.

**Available in:** Controller.

## Example

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