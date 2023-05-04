/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Modulation Destination Types

---

**On this page:**

[[_TOC_]]

---

## Description

Enumerator to identify the modulation destinations.

**Available in:** Controller.

|Index|Destination|
|:-|:-|
|0|ModulationDestination.unassigned|
|1|ModulationDestination.pitch|
|2|ModulationDestination.cutoff|
|3|ModulationDestination.resonance|
|4|ModulationDestination.distortion|
|5|ModulationDestination.morphX|
|6|ModulationDestination.morphY|
|7|ModulationDestination.cutoffOffset|
|8|ModulationDestination.resonanceOffset|
|9|ModulationDestination.level|
|10|ModulationDestination.volume1|
|11|ModulationDestination.volume2|
|12|ModulationDestination.pan|
|13|ModulationDestination.sampleStart|
|14|ModulationDestination.speedFactor|
|15|ModulationDestination.formantShift|
|16|ModulationDestination.grainPosition|
|17|ModulationDestination.grainDirection|
|18|ModulationDestination.grainDuration|
|19|ModulationDestination.grainLength|
|20|ModulationDestination.grainPitch|
|21|ModulationDestination.grainFormant|
|22|ModulationDestination.grainLevel|
|23|ModulationDestination.osc1Pitch|
|24|ModulationDestination.osc1Level|
|25|ModulationDestination.osc1Waveform|
|26|ModulationDestination.osc1MultiDetune|
|27|ModulationDestination.osc1MultiPan|
|28|ModulationDestination.osc1MultiVoices|
|29|ModulationDestination.osc2Pitch|
|30|ModulationDestination.osc2Level|
|31|ModulationDestination.osc2Waveform|
|32|ModulationDestination.osc2MultiDetune|
|33|ModulationDestination.osc2MultiPan|
|34|ModulationDestination.osc2MultiVoices|
|35|ModulationDestination.osc3Pitch|
|36|ModulationDestination.osc3Level|
|37|ModulationDestination.osc3Waveform|
|38|ModulationDestination.osc3MultiDetune|
|39|ModulationDestination.osc3MultiPan|
|40|ModulationDestination.osc3MultiVoices|
|41|ModulationDestination.subOscLevel|
|42|ModulationDestination.ringModLevel|
|43|ModulationDestination.noiseLevel|
|44|-|
|45|-|
|46|ModulationDestination.lfo1Freq|
|47|ModulationDestination.lfo1Shape|
|48|ModulationDestination.lfo2Freq|
|49|ModulationDestination.lfo2Shape|
|50|ModulationDestination.ampEnvAttack|
|51|ModulationDestination.ampEnvDecay|
|52|ModulationDestination.ampEnvSustain|
|53|ModulationDestination.ampEnvRelease|
|54|ModulationDestination.filterEnvAttack|
|55|ModulationDestination.filterEnvDecay|
|56|ModulationDestination.filterEnvSustain|
|57|ModulationDestination.filterEnvRelease|
|58|ModulationDestination.pitchEnvStartLev|
|59|ModulationDestination.pitchEnvAttack|
|60|ModulationDestination.pitchEnvAttLev|
|61|ModulationDestination.pitchEnvDecay|
|62|ModulationDestination.pitchEnvSustain|
|63|ModulationDestination.pitchEnvRelease|
|64|ModulationDestination.pitchEnvRelLev|
|65|ModulationDestination.userEnvStartLev|
|66|ModulationDestination.userEnvAttack|
|67|ModulationDestination.userEnvAttLev|
|68|ModulationDestination.userEnvDecay|
|69|ModulationDestination.userEnvSustain|
|70|ModulationDestination.userEnvRelease|
|71|ModulationDestination.userEnvRelLev|
|72|ModulationDestination.stepModFreq|
|73|ModulationDestination.stepModSlope|
|74|ModulationDestination.bus1|
|75|ModulationDestination.bus2|
|76|ModulationDestination.bus3|
|77|ModulationDestination.bus4|
|78|ModulationDestination.bus5|
|79|ModulationDestination.bus6|
|80|ModulationDestination.bus7|
|81|ModulationDestination.bus8|
|82|ModulationDestination.bus9|
|83|ModulationDestination.bus10|
|84|ModulationDestination.bus11|
|85|ModulationDestination.bus12|
|86|ModulationDestination.bus13|
|87|ModulationDestination.bus14|
|88|ModulationDestination.bus15|
|89|ModulationDestination.bus16|
|90|-|
|91|-|
|92|ModulationDestination.audioIn|
|93|ModulationDestination.wavetable1Pitch|
|94|ModulationDestination.wavetable1Level|
|95|ModulationDestination.wavetable1Pan|
|96|ModulationDestination.wavetable1MultiDetune|
|97|ModulationDestination.wavetable1MultiPan|
|98|ModulationDestination.wavetable1MultiSpread|
|99|ModulationDestination.wavetable1MultiVoices|
|100|ModulationDestination.wavetable1Pos|
|101|-|
|102|ModulationDestination.wavetable1Dir|
|103|-|
|104|ModulationDestination.wavetable1Speed|
|105|-|
|106|ModulationDestination.wavetable2Pitch|
|107|ModulationDestination.wavetable2Level|
|108|ModulationDestination.wavetable2Pan|
|109|ModulationDestination.wavetable2MultiDetune|
|110|ModulationDestination.wavetable2MultiPan|
|111|ModulationDestination.wavetable2MultiSpread|
|112|ModulationDestination.wavetable2MultiVoices|
|113|ModulationDestination.wavetable2Pos|
|114|-|
|115|ModulationDestination.wavetable2Dir|
|116|-|
|117|ModulationDestination.wavetable2Speed|
|118|-|
|119|ModulationDestination.wavetableSubPitch|
|120|ModulationDestination.wavetableSubLevel|
|121|ModulationDestination.wavetableSubPan|
|122|ModulationDestination.wavetableNoiseSpeed|
|123|ModulationDestination.wavetableNoiseLevel|
|124|ModulationDestination.wavetableNoisePan|
|125|ModulationDestination.wavetable1FormantShift|
|126|ModulationDestination.wavetable2FormantShift|

[Jump to Top ](#modulation-destination-types)

## Example

```lua
-- Define modulation destinations.

defineSlotLocal("modDestinations")
modDestinations = {
            { name = "-",           index = ModulationDestination.unassigned },
            { name = "Pitch",       index = ModulationDestination.pitch },
            { name = "Cutoff",      index = ModulationDestination.cutoff },
            { name = "Resonance",   index = ModulationDestination.resonance },
            { name = "Distortion",  index = ModulationDestination.distortion }
            }
 
-- Create a table with the names of the modulation destinations.

function getModDestNames()
    modDestNames = {}
    for i=1, #modDestinations do
        modDestNames[i] = modDestinations[i].name
    end
end
getModDestNames()
 
-- Parameter change callback to set the modulation destination.

function onModDestChanged(row, modDestinationParam)
    local modRow = this.parent:getZone():getModulationMatrixRow(row)
    local modDestination = modDestinations[modDestinationParam]
    modRow:setParameter("Destination.Destination", modDestination.index)
end
 
-- Define parameters for modulation matrix destinations 1-4.

defineParameter("ModDestination1", "Modulation Destination 1",  1, modDestNames, function() onModDestChanged(1,  ModDestination1)  end)
defineParameter("ModDestination2", "Modulation Destination 2",  1, modDestNames, function() onModDestChanged(2,  ModDestination2)  end)
defineParameter("ModDestination3", "Modulation Destination 3",  1, modDestNames, function() onModDestChanged(3,  ModDestination3)  end)
defineParameter("ModDestination4", "Modulation Destination 4",  1, modDestNames, function() onModDestChanged(4,  ModDestination4)  end)
```

**See also:** [ModulationMatrixRow](./ModulationMatrixRow.md), [getModulationMatrixRow](./getModulationMatrixRow.md), [setSource1](./setSource1.md), [setSource2](./setSource2.md), [getSource1](./getSource1.md), [getSource2](./getSource2.md), [Modulation Source Types](./Modulation-Source-Types.md)