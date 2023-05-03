/* ANCHOR: all */

// ANCHOR: function
>**getOutputBus()**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the currently assigned output bus of a zone or bus.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Return Values

// ANCHOR: return-values
Returns the [Bus](./Bus.md) object of the currently assigned output bus or ``nil`` if the default routing is used.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Raise an error if no output bus is assigned.

zone = this.parent:getZone()

assert(zone:getOutputBus(), "No output bus assigned. The default routing is used!")
```
// ANCHOR_END: example

/* ANCHOR_END: all */