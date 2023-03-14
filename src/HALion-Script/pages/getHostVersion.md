/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getHostVersion

>**getHostVersion()**

## Description

Function to retrieve the version of the host software.

**Available in:** Processor.

## Return Values

Returns a string with the version of the host software.

## Example

```lua
-- Print the version of the host software.

function onInit()
    print(getHostVersion())
end
```

**See also:** [getHostName](./getHostName.md), [getProductName](./getProductName.md), [getProductVersion](./getProductVersion.md)