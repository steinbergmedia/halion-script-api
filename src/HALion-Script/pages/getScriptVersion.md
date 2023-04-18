/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getScriptVersion

>**getScriptVersion()**

## Description

Function to retrieve the version of the script engine.

**Available in:** Processor.

## Return Values

Returns a string with the version of the script engine.

## Example

```lua
-- Print the version of the script engine.

function onInit()
    print(getScriptVersion())
end
```