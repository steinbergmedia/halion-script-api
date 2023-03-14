/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getProductName

>**getProductName()**

## Description

Function to retrieve the name of the plug-in.

**Available in:** Processor.

## Return Values

Returns a string with the name of the plug-in.

## Example

```lua
-- Print the name of the plug-in.

function onInit()
    print(getProductName())
end
```

**See also:** [getProductVersion](./getProductVersion.md), [getHostName](./getHostName.md), [getHostVersion](./getHostVersion.md)