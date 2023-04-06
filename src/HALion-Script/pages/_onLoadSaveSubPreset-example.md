```lua
--[[
    The corresponding MacroPage needs two preset templates: One with
    the section set to Pitch and the other with the section set to Filter.
 
    The preset template with the section Pitch stores/restores the
    parameters Pitch.Coarse and Pitch.Fine.
 
    The preset template with the section Filter stores/restores the
    parameters Filter.Cutoff and Filter.Resonance.
--]]
 
-- Get the values of p1 and p2 from the first zone of the program.
function getZoneData(p1, p2)
    local data = {}
    local zone = this.program:findZones(true)
    if zone[1] then
        data.p1 = zone[1]:getParameter(p1)
        data.p2 = zone[1]:getParameter(p2)
    end
    return data
end
 
-- Set the values of p1 and p2 in the first zone of the program.
function setZoneData(p1, p2, data)
    local zone = this.program:findZones(true)
    if zone[1] then
        zone[1]:setParameter(p1, data.p1)
        zone[1]:setParameter(p2, data.p2)
    end
end
 
-- Save data with the subpreset.
function onSaveSubPreset(section)
    if section == "Pitch" then
        return getZoneData("Pitch.Coarse", "Pitch.Fine" ) -- This is called from the preset template Pitch.
    elseif section == "Filter" then
        return getZoneData("Filter.Cutoff", "Filter.Resonance") -- This is called from the preset template Filter.
    end
end
 
-- Restore data from the subpreset.
function onLoadSubPreset(section, data)
    if section == "Pitch" then
        setZoneData("Pitch.Coarse", "Pitch.Fine", data) -- This is called from the preset template Pitch.
    elseif section == "Filter" then
        setZoneData("Filter.Cutoff", "Filter.Resonance", data) -- This is called from the preset template Filter.
    end
end
```