/* ANCHOR: all */

// ANCHOR: function
>**setOutputBus(bus)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to assign the output of a zone or bus to the specified output bus. The sending zone or bus is determined by its [Element](./Element.md) object. The receiving output bus is specified by its [Bus](./Bus.md) object. Setting the output bus to ``nil`` enables the default signal routing for the zone or bus.

>&#10069; Output busses that are higher up in the hierarchy of the **Program Tree** can be assigned freely. If the sending bus and the receiving output bus have the same parent layer, the output bus must come later in the signal flow.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**bus**|The [Bus](./Bus.md) object of the bus that you want to assign, or ``nil``.|[Bus](./Bus.md) or ``nil``|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Assign the output of the zone to the Master output bus of the plug-in.

zone = this.parent:getZone()
masterbus = this.program.instance:getBus(1)
 
zone:setOutputBus(masterbus)
 
print("Output of "..zone.name.." is assigned to "..masterbus.name..".")
```
// ANCHOR_END: example

/* ANCHOR_END: all */