/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getUserPresetPath

>**getUserPresetPath(product)**

## Description

Function to obtain the file path for the user VST presets of a product. If no product is set, the function returns the file path of the current plug-in.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**product**|The name of the product.|string, optional|

## Return Values

Returns the file path for the user VST presets of the specified product.

## Example

```lua
-- Print the user VST preset path for the current plug-in and Halion Sonic.
 
plugInPresetPath = getUserPresetPath()
halionSonicPresetPath = getUserPresetPath("HALion Sonic")
 
print(plugInPresetPath)
print(halionSonicPresetPath)
```

**See also:** [getUserSubPresetPath](./getUserSubPresetPath.md)