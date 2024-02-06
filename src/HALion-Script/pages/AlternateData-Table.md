/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# AlternateData Table

{{#include ../../_Version.md:halion6410}}

## Description

The alternations in the Alternation List of the Layer Alternate MIDI module are managed via a predefined table: the AlternateData table. This table can be obtained by making a call to [getParameter](./getParameter.md) with ``"AlternateData"`` as parameter. The alternations are referenced by their index. Each alternation has the fields ``.keyswitch`` and ``.layer``. You can change the values, but the structure of this table must remain unaltered. The values are set by making a call to [setParameter](./setParameter.md). See the example below for more details.

**Available in:** Controller.

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.keyswitch**|Key switches allow you to switch to a particular layer. You set the key switch with the corresponding MIDI note number . Set this to -1 to deactivate the keyswitch.|number|
|**.layer**|The layer for the alternation is defined by the corresponding [Layer](./Layer.md) object.|[Layer](./Layer.md)|

## Example

```lua
-- Add a Layer Alternate MIDI module.
this.parent:appendMidiModule(MidiModule("Layer Alternate"))
layerAlternate = this.parent:getMidiModule("")
layerAlternate:setName("Layer Alternate")
altdata = layerAlternate:getParameter("AlternateData")
-- Create three layers with a synth zone and add them to the alternation list.
for i = 1, 3 do
    this.parent:appendLayer(Layer())
    local alternateLayer = this.parent:getLayer(i)
    alternateLayer:setName("Alt "..i)
    alternateLayer:appendZone(Zone())
    local zone = alternateLayer:getZone()
    zone:setName("Zone "..i)
    altdata[#altdata+1] = { keyswitch = -1, layer = alternateLayer }
end
layerAlternate:setParameter("AlternateData", altdata)
```