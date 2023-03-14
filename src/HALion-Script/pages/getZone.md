/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getZone

>**getZone(nameOrPosition)**

## Description

Function to retrieve the [Zone](./Zone.md) object of a zone in the specified layer. For example, ``this.parent`` defines the parent layer of the script module as the layer to be searched in. This function does not search in sublayers. A particular zone can be searched by name or position. The position is the number indexing the zones in the specified layer. If several zones share the same name, only the first match will be returned. If no argument is set, the function returns the first zone it finds.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrPosition**|The name or position of the zone. Set this to ``nil`` to deactivate the search filter.|string or number, optional|

## Return Values

Returns the [Zone](./Zone.md) object of the found zone. Returns ``nil`` if no zone is found.

## Example

```lua
-- Get the first zone in the program and print its name.

zone = this.program:getZone()
 
if zone then
    print(zone.name)
else
    print("Could not find a zone!")
end
```

**See also:** [getBus](./getBus.md), [getChild](./getChild.md), [getEffect](./getEffect.md), [getLayer](./getLayer.md), [getMidiModule](./getMidiModule.md), [getSlot](./getSlot.md), [Zone](./Zone.md)