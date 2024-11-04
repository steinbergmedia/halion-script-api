/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Bypass Masks

{{#include ../../_Version.md:halion640}}

## Description

Enumerator to determine the values that determine if a bus or effect follows the global inserts and Aux bypass buttons of the plug-in. The values must be applied to the ``bypassMask`` field of the desired [Bus](./Bus.md) or [Effect](./Effect.md) object. See the example below for details.

**Available in:** Controller.

## Bypass Masks

The values are determined with these names:

|Value|Name|
|:-|:-|
|0|BypassMask.noBypass|
|2|BypassMask.bypassInserts|
|4|BypassMask.bypassAux|

## Example

```lua
bus = this.parent:getBus()
  
bypassSettings = {
    {name = "No Bypass",            value = BypassMask.noBypass },
    {name = "Follow Inserts",       value = BypassMask.bypassInserts },
    {name = "Follow Aux",           value = BypassMask.bypassAux },
    {name = "Follow Inserts & Aux", value = BypassMask.bypassInserts + BypassMask.bypassAux },
}
  
bypassSettingsNames = {}
  
for i = 1, #bypassSettings do
    bypassSettingsNames[i] = bypassSettings[i].name
end
  
function onBypassSettingChanged()
    bus.bypassMask = bypassSettings[GlobalBypass].value
    print(bus.name, bus.bypassMask)
end
  
defineParameter("GlobalBypass", nil, 1, bypassSettingsNames, onBypassSettingChanged)
```

**See also:** [Bus](./Bus.md), [Effect](./Effect.md)