/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getOutputBus

>**getOutputBus()**

## Description

Function to retrieve the currently assigned output bus of a zone or bus.

**Available in:** Controller, Processor.

## Return Values

Returns the [Bus](./Bus.md) object of the currently assigned output bus or ``nil`` if the default routing is used.

## Example

```lua
-- Raise an error if no output bus is assigned.

zone = this.parent:getZone()

assert(zone:getOutputBus(), "No output bus assigned. The default routing is used!")
```

**See also:** [setOutputBus](./setOutputBus.md), [Bus](./Bus.md)