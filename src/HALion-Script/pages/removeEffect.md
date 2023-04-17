/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# removeEffect

>**removeEffect(effectOrPosition)**

## Description

Function to remove an effect from a bus. You can use [getBus](./getBus.md) or [findBusses](./findBusses.md) to define the bus that contains the effect. The effect to be removed is determined by its [Effect](./Effect.md) object or its position. You can use [getEffect](./getEffect.md) or [findEffects](./findEffects.md) to determine the [Effect](./Effect.md) object. The position is the number indexing the effects in the bus.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**insertOrPosition**|The [Effect](./Effect.md) object or the position of the effect to be removed.|[Effect](./Effect.md) or number|

## Example

```lua
-- Remove all effects from the program.
 
busses = this.program:findBusses(true)
 
for i, bus in ipairs(busses) do
    effects = bus:findEffects(true)
    for j, effect in ipairs(effects) do
        bus:removeEffect(effect)
    end
end
```

**See also:** [removeBus](./removeBus.md), [removeLayer](./removeLayer.md), [removeMidiModule](./removeMidiModule.md), [removeZone](./removeZone.md), [Effect](./Effect.md)