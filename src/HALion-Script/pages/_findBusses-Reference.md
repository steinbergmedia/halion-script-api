/* ANCHOR: all */

// ANCHOR: function
>**findBusses(recursive, nameOrFilterFunction)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to find busses in the specified [Element](./Element.md) object. For example, ``this.parent`` specifies the parent of the script module as the [Element](./Element.md) object to be searched in. If recursive is set to ``true``, subelements will also be searched. The function returns an array with the [Bus](./Bus.md) objects of the found busses. Particular busses can be searched by name or through a filter function. If searching by name, findBusses accepts only the [Bus](./Bus.md) objects that match the specified name. The filter function uses the [Bus](./Bus.md) object of each bus as argument. Only those [Bus](./Bus.md) objects that return ``true`` for the search criteria defined in the filter function will be accepted by findBusses. Without a name or filter function the [Bus](./Bus.md) objects of all busses in the searched Element obects will be returned.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**recursive**|If set to ``false``, only the specified [Element](./Element.md) object will be searched. If set to ``true``, subelements will also be searched. The default is ``false``.|boolean|
|**nameOrFilterFunction**|The name of the busses searched for or a filter function. Only the [Bus](./Bus.md) objects that match the name or return ``true`` for the search criteria of the filter function will be accepted. Set this to ``nil`` to deactivate any name filter or search criteria.|string or function, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns an array with the [Bus](./Bus.md) objects of the found busses. Returns an empty table if no busses are found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Find all busses and print their names.
busses = this.program:findBusses(true)
 
if busses[1] then
    for i, bus in ipairs(busses) do
        print(bus.name)
    end
else
    print("Could not find any busses!")
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */