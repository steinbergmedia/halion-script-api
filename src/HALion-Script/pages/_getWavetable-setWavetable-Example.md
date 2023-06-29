```lua
-- Copy all wavetable data from oscillator 1 to oscillator 2.

zone = this.parent:getZone()
wt1 = zone:getWavetable(1)
if wt1 then
    zone:setWavetable(2, wt1)
end
```