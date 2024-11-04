/* ANCHOR: all */

// ANCHOR: function
>**findChildren(recursive, nameOrFilterFunction)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to find children in the specified [Element](./Element.md) object. For example, ``this.parent`` specifies the parent layer of the script module as the [Element](./Element.md) object to be searched in. If recursive is set to ``true``, subelements will also be searched. The function returns an array with the [Element](./Element.md) objects of the found children. Particular children can be searched by name or via a filter function. If searching by name, findChildren accepts only the [Element](./Element.md) objects that match the specified name. The filter function uses the [Element](./Element.md) object of each child as argument. Only those [Element](./Element.md) objects that return ``true`` for the search criteria defined in the filter function will be accepted by findChildren. Without a name or filter function, the [Element](./Element.md) objects of all children in the searched [Element](./Element.md) object will be returned.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**recursive**|If this is set to ``false``, only the specified [Element](./Element.md) object will be searched. If this is set to ``true``, subelements will also be searched. The default is ``false``.|boolean|
|**nameOrFilterFunction**|The name of the children searched for or a filter function. Only the [Element](./Element.md) objects that match the name or return ``true`` for the search criteria of the filter function will be accepted. Set this to ``nil`` to deactivate any name filter or search criteria.|string or function, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns an array with the [Element](./Element.md) objects of the found children. Returns an empty table if no children are found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Find the MIDI module with the name "Lua Script" and print its type.

scriptModules = this.parent:findChildren(false, "Lua Script")
 
if scriptModules[1] then
    print(scriptModules[1].type)
end
 
-- Find all children and print their names.
children = this.program:findChildren(true)
 
if children[1] then
    for i, child in ipairs(children) do
        print(child.name)
    end
else
    print("Could not find any children!")
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */