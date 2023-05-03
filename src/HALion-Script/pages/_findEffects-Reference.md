/* ANCHOR: all */

// ANCHOR: function
>**findEffects(recursive, nameOrFilterFunction)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to find effects in the specified [Element](./Element.md) object. For example, ``this.parent`` specifies the parent of the script module as [Element](./Element.md) object to be searched in. To specifiy a bus to be searched in, use [getBus](./getBus.md) or [findBusses](./findBusses.md). If recursive is set to ``true``, subelements will also be searched. The function returns an array with the [Effect](./Effect.md) objects of the found effects. Particular effects can be searched by name or through a filter function. If searching by name, [findEffects](./findEffects.md) accepts only the [Effect](./Effect.md) objects that match the specified name. The filter function uses the [Effect](./Effect.md) object of each effect as argument. Only those [Effect](./Effect.md) objects that return ``true`` for the search criteria defined in the filter function will be accepted by [findEffects](./findEffects.md). Without a name or filter function the [Effect](./Effect.md) objects of all effects in the searched [Element](./Element.md) objects will be returned.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**recursive**|If set to ``false``, only the specified [Element](./Element.md) object will be searched. If set to ``true``, subelements will also be searched. The default is ``false``.|boolean|
|**nameOrFilterFunction**|The name of the effects searched for or a filter function. Only the [Effect](./Effect.md) objects that match the name or return ``true`` for the search criteria of the filter function will be accepted. Set this to ``nil`` to deactivate any name filter or search criteria.|string or function, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns an array with the [Effect](./Effect.md) objects of the found effects. Returns an empty table if no effects are found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Find all effects and print their names.
effects = this.program:findEffects(true)
 
if effects[1] then
    for i, effect in ipairs(effects) do
        print(effect.name)
    end
else
    print("Could not find any effects!")
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */