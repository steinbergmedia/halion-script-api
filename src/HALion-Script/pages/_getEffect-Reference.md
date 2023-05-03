/* ANCHOR: all */

// ANCHOR: function
>**getEffect(nameOrPosition)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the [Effect](./Effect.md) object of an effect from the specified bus. You can use [getBus](./getBus.md) or [findBusses](./findBusses.md) to specify the bus. A particular effect can be searched by name or position. The position is the number indexing the effects in the specified bus. If several effects share the same name, only the first match will be returned. If no argument is set, the function returns the first effect that it finds.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrPosition**|The name or position of the effect. Set this to ``nil`` to deactivate the search filter.|string or number, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the [Effect](./Effect.md) object of the found effect. Returns ``nil`` if no bus is found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
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
// ANCHOR_END: example

/* ANCHOR_END: all */