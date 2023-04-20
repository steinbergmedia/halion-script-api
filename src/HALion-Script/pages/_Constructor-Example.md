```lua
-- The following function creates different types of objects in the Program Tree.
-- The objects in the Program Tree do not have a name. You will see only their icons.

function createProgram()
  local inst = this.program.instance
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
 
createProgram()
```