```lua
defineParameter { name = "StartProcess", default = false, onChanged = function() if StartProcess then onStart() end end }
defineParameter { name = "CancelProcess", default = false}
defineParameter { name = "WavetableStart", default = 0, min = 0, max = 1024, increment = 1 }
defineParameter { name = "WavetableLength", default = 0, min = 0, max = 1024, increment = 1 }



function onStart()
    zones = this.parent:findZones(true)
    for i, zone in ipairs(zones) do
        local function onFinished(progressInf)
            if progressInf then
                if progressInf.error then
                    print(progressInf.error)
                elseif not progressInf.cancel then
                    print("Progress: 100%")
                    local wt = progressInf.root
                    if wt then
                        print("Wavetable "..wt.name.." analyzed.")
                        zone:setWavetable(1, wt)
                    end
                end
            end
        end
        local wt = zone:getWavetable (1)
        if wt then
            if WavetableStart > 0 then
                if WavetableLength > 1 then
                    local waves = {}
                    local startIdx = math.min (WavetableStart, #wt)
                    local endIdx = math.min (WavetableStart + WavetableLength - 1, #wt)
                    for idx = startIdx, endIdx do table.insert(waves, idx) end
                    print(string.format("Analyze Waves %d to %d of Wavetable ", startIdx, endIdx)..wt.name)
                    progressInf = analyzeWavetableAsync(wt, waves, onFinished)
                elseif WavetableLength == 1 then
                    local wave = math.min (WavetableStart, #wt)
                    print(string.format("Analyze Wave %d of Wavetable ", wave)..wt.name)
                    progressInf = analyzeWavetableAsync(wt, wave, onFinished)
                else
                    print("Nothing to analyze of Wavetable "..wt.name)
                end
            else
                print("Analyze Wavetable "..wt.name)
                progressInf = analyzeWavetableAsync (wt, nil, onFinished)
            end
            while progressInf.progress < 1 do
                if CancelProcess then
                    progressInf.cancel = true
                    break
                elseif progressInf.error then
                    break
                else
                    local progressPercent = 100 * progressInf.progress
                    print(string.format("Progress: %2d%%", progressPercent))
                    wait(2000)
                end
            end
            if CancelProcess then
                CancelProcess = false
                print("Wavetable analysis canceled!")
                break
            end
        end
    end
    print("Wavetable analysis finished.")
    StartProcess = false
end
```
