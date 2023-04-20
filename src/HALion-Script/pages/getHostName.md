/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getHostName

>**getHostName()**

#### Description

Function to retrieve the name of the host software.

**Available in:** Processor.

#### Return Values

Returns a string with the name of the host software.

#### Example

```lua
-- Print the name of the host software.

function onInit()
    print(getHostName())
end
```

**See also:** [getHostVersion](./getHostVersion.md), [getProductName](./getProductName.md), [getProductVersion](./getProductVersion.md)