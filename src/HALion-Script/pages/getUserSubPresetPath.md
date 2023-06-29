/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getUserSubPresetPath

>**getUserSubPresetPath(product)**

## Description

Function to obtain the file path for the user sub presets of a product. If no product is set, the function returns the file path of the current plug-in.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**product**|The name of the product.|string, optional|

## Return Values

Returns the file path for the user sub presets of the specified product.

## Example

```lua
-- Print the user subpreset path for the current plug-in and Halion Sonic.
 
plugInSubPresetPath = getUserSubPresetPath()
halionSonicSubPresetPath = getUserSubPresetPath("HALion Sonic")
 
print(plugInSubPresetPath)
print(halionSonicSubPresetPath)
```

**See also:** [getUserPresetPath](./getUserPresetPath.md)