/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getChild

>**getChild(nameOrPosition)**

## Description

Function to retrieve the [Element](./Element.md) object of a child in the specified [Element](./Element.md) object. For example, ``this.parent`` specifies the parent layer of the script module as the [Element](./Element.md) object to be searched in. This function does not search in subelements. A particular child can be searched by name or position. The position is the number indexing the children in the specified [Element](./Element.md) object. If several children share the same name, only the first match will be returned. If no argument is set, the function returns the first child it finds.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrPosition**|The name or position of the child. Set this to ``nil`` to deactivate the search filter.|string or number, optional|

## Return Values

Returns the [Element](./Element.md) object of the found child. Returns ``nil`` if no child is found.

## Example

```lua
-- Locate the first child in the program and print its name.

child = this.program:getChild()
 
if child then
    print(child.name)
else
    print("Could not find a child!")
end
```

**See also:** [getBus](./getBus.md), [getEffect](./getEffect.md), [getLayer](./getLayer.md), [getMidiModule](./getMidiModule.md), [getSlot](./getSlot.md), [getZone](./getZone.md), [Element](./Element.md)