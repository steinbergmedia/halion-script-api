/* ANCHOR: all */

// ANCHOR: function
>**removeZone(zoneOrPosition)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to remove a zone from the specified layer. For example, ``this.parent`` specifies the parent layer of the script module as the layer that contains the zone. The zone to be removed is determined by its [Zone](./Zone.md) object or its position. You can use [getZone](./getZone.md) or [findZones](./findZones.md) to determine the [Zone](./Zone.md) object. The position is the number that indexes the zones in the specified layer.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**zoneOrPosition**|The [Zone](./Zone.md) object or position of the zone to be removed.|[Zone](./Zone.md) or number|
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
```lua
-- Remove all zones from the program.

zones = this.program:findZones(true)

for i, zone in ipairs(zones) do
    zone.parent:removeZone(zone)
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */