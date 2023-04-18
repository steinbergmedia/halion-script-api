/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getProductVersion

>**getProductVersion()**

## Description

Function to retrieve the version of the plug-in.

**Available in:** Controller, Processor.

## Return Values

Returns a string with the version of the plug-in.

## Example

```lua
-- Print the version of the plug-in.

function onInit()
    print(getProductVersion())
end
```

**See also:** [getProductName](./getProductVersion.md), [getHostName](./getHostName.md), [getHostVersion](./getHostVersion.md)