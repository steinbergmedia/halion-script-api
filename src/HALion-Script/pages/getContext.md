/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getContext

>**getContext()**

## Description

Function to obtain the name of the context.

**Available in:** Controller, Processor.

## Return Values

Returns a string with the name of the context in which the function is called.

## Example

```lua
-- Print the context.

print("Global statement: "..getContext())
 
function onLoadIntoSlot()
    print("onLoadIntoSlot: "..getContext())
end
 
function onInit()
    print("onInit: "..getContext())
end
```

### Output Messages
```lua
Global statement: Controller
onLoadIntoSlot: Controller
onInit: Processor
```

**See also:** [onLoadIntoSlot](./onLoadIntoSlot.md), [onInit](./onInit.md)