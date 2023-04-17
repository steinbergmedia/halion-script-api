```lua
-- Define the modulation sources and infos in an array.
modSources = {
    { source = ModulationSource.lfo1, bipolar = 1 },
    { source = ModulationSource.midiControl, bipolar = 0, sourceInfo1 = 1 },
    { source = ModulationSource.quickControl, bipolar = 1, sourceInfo1 = this.program, sourceInfo2 = 1 },
    { source = ModulationSource.modulationModule, bipolar = 0, sourceInfo1 = this, sourceInfo2 = 1 },
    { source = ModulationSource.modulationModule, bipolar = 0, sourceInfo1 = this, sourceInfo2 = 2 },
    { source = ModulationSource.noteExpression, bipolar = 0, sourceInfo1 = 1 }
}
 
-- Define two modulation outputs for the script module.
defineModulation("50%", false)
defineModulation("100%", false)
 
-- Calculate the modulation outputs.
function calcModulation()
    return 0.5, 1
end
 
-- Get the element object of the first zone.
zone = this.program:findZones(true)[1]
 
-- Assign the modulation sources to source 1 in the modulation rows 1 to 6.
for i=1, #modSources do
    local modRow = zone:getModulationMatrixRow(i)
    modRow:setSource1(modSources[i].source, modSources[i].sourceInfo1, modSources[i].sourceInfo2)
    modRow:setParameter("Source1.Polarity", modSources[i].bipolar) -- set the default polarity of the source
end
 
-- Assign the sample & hold to source 2 in modulation row 1.
modRow = zone:getModulationMatrixRow(1)
modRow:setSource2(ModulationSource.sampleAndHold, 0)
```