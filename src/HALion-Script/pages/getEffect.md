/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getEffect

>**getEffect(nameOrPosition)**

## Description

Function to retrieve the [Effect](./Effect.md) object of an effect from the specified bus. You can use [getBus](./getBus.md) or [findBusses](./findBusses.md) to specify the bus. A particular effect can be searched by name or position. The position is the number indexing the effects in the specified bus. If several effects share the same name, only the first match will be returned. If no argument is set, the function returns the first effect that it finds.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrPosition**|The name or position of the effect. Set this to ``nil`` to deactivate the search filter.|string or number, optional|

## Return Values

Returns the [Effect](./Effect.md) object of the found effect. Returns ``nil`` if no bus is found.

## Example

```lua
-- Locate the first bus in the program.

bus = this.program:getBus()

if bus then
    -- Locate the first effect of the bus and print its name.
    effect = bus:getEffect()
    if effect then
        print(effect.name)
    else
        print("Could not find an effect!")
    end
else
    print("Could not find a bus!")
end
```

**See also:** [getBus](./getBus.md), [getChild](./getChild.md), [getLayer](./getLayer.md), [getMidiModule](./getMidiModule.md), [getSlot](./getSlot.md), [getZone](./getZone.md), [Effect](./Effect.md)