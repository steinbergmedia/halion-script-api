/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# calcModulation

>**calcModulation()**

## Description

Function to generate the modulation signals that have been defined with [defineModulation](./defineModulation.md). The function is executed every 32 samples.

**Available in:** Processor.

## Return Values

Returns one or more modulation signals. Multiple modulation signals can be returned as a tuple or as a table. If the modulation is defined as unipolar, the signal must be in the range from 0.0 to 1.0. If the modulation is defined as bipolar, the signal must be in the range from -1.0 to 1.0.

## Examples

```lua
-- Modulation signals returned as tuple.
freq = 1
phase = 0
pi = math.pi
 
defineModulation('Ramp Up', false)
defineModulation('Sine', true)
defineModulation('Ramp Down', false)
 
function calcModulation()
    rate = getSamplingRate() / 32
    phase = phase + freq / rate
    if phase >= 1 then
        phase = phase - 1
    end
    return phase, math.sin(2 * pi * phase), 1 - phase
end
```

```lua
-- Modulation signals returned as table.
freq = 1
phase = 0
pi = math.pi
local mod = {}
 
defineModulation('Ramp Up', false)
defineModulation('Sine', true)
defineModulation('Ramp Down', false)
 
function calcModulation()
    rate = getSamplingRate() / 32
    phase = phase + freq / rate
    if phase >= 1 then
        phase = phase - 1
    end
    mod[1] = phase
    mod[2] = math.sin(2 * pi * phase)
    mod[3] = 1 - phase
    return mod
end
```

**See also:** [defineModulation](./defineModulation.md)