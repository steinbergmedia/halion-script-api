/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Instance Constructor

>**Instance()**

## Description

Constructor to create a new [Instance](./Instance.md) object.

**Available in:** Controller.

## Return Values

Returns a new [Instance](./Instance.md) object.

## Example

```lua
function createInstance()
  local inst = Instance()
  local slot = Slot()
  local prg = Program()
  local bus = Bus()
  prg:appendBus(bus)
  inst:setProgram(prg, 1)
  local layer = Layer()
  prg:appendLayer(layer)
  layer:appendZone(Zone())
  local mm = MidiModule('MIDI Player')
  layer:appendMidiModule(mm)
  local fx = Effect('Distortion')
  bus:appendEffect(fx)
end
```

**See also:** [Slot Constructor](./Slot-Constructor.md), [Program Constructor](./Program-Constructor.md), [Bus Constructor](./Bus-Constructor.md), [Layer Constructor](./Layer-Constructor.md), [Zone Constructor](./Zone-Constructor.md), [MidiModule Constructor](./MidiModule-Constructor.md), [Effect Constructor](./Effect-Constructor.md)