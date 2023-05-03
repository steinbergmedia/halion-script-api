/* ANCHOR: all */

// ANCHOR: function
>**findZones(recursive, nameOrFilterFunction)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to find zones in the specified layer. For example, ``this.parent`` defines the parent layer of the script module as the layer to be searched in. If recursive is set to ``true``, sublayers will also be searched. The function returns an array with the [Zone](./Zone.md) objects of the found zones. Particular zones can be searched by name or through a filter function. If searching by name, findZones accepts only the [Zone](./Zone.md) objects that match the specified name. The filter function uses the [Zone](./Zone.md) object of each zone as argument. Only those [Zone](./Zone.md) objects that return ``true`` for the search criteria defined in the filter function will be accepted by findZones. Without a name or filter function the [Zone](./Zone.md) objects of all zones in the searched layers will be returned.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**recursive**|If set to ``false``, only the current layer will be searched. If set to ``true``, sublayers will also be searched. The default is ``false``.|boolean|
|**nameOrFilterFunction**|The name of the zones searched for or a filter function. Only the [Zone](./Zone.md) objects that match the name or return ``true`` for the search criteria of the filter function will be accepted. Set this to ``nil`` to deactivate any name filter or search criteria.|string or function, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns an array with the [Zone](./Zone.md) objects of the found zones. Returns an empty table if no zones are found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Find all zones and print their names.

zones = this.program:findZones(true)
 
if zones[1] then
    for i, zone in ipairs(zones) do
        print(zone.name)
    end
else
    print("Could not find any zones!")
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */