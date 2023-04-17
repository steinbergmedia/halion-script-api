/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# removeZone

>**removeZone(zoneOrPosition)**

## Description

Function to remove a zone from the specified layer. For example, ``this.parent`` specifies the parent layer of the script module as the layer that contains the zone. The zone to be removed is determined by its [Zone](./Zone.md) object or its position. You can use [getZone](./getZone.md) or [findZones](./findZones.md) to determine the [Zone](./Zone.md) object. The position is the number that indexes the zones in the specified layer.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**zoneOrPosition**|The [Zone](./Zone.md) object or position of the zone to be removed.|[Zone](./Zone.md) or number|

## Example

```lua
-- Remove all zones from the program.

zones = this.program:findZones(true)

for i, zone in ipairs(zones) do
    zone.parent:removeZone(zone)
end
```

**See also:**  [removeBus](./removeBus.md), [removeEffect](./removeEffect.md), [removeLayer](./removeLayer.md), [removeMidiModule](./removeMidiModule.md), [Zone](./Zone.md)