```lua
channelNames = { [0] = "All", "Left", "Right" }
  
defineParameter( "Channel", nil, 0, channelNames)
defineParameter( "Start", nil, false, function() if Start then onStart() end end)
defineParameter( "Cancel", nil, false)
  
-- Requires the Skylab content.
path = "vstsound://724ACB205EFF46F885735D1B216C37AD/.AppData/Steinberg/Skylab/Sub Presets/Layer Presets/Ambient Pads/Ambient Pad 01.vstpreset"
layer = loadPreset(path)
  
function onPitchAnalysisFinished(audioFile, channelNum)
    print("Progress: 100%")
    print(channelNames[channelNum].." channel(s) of "..audioFile.fileName.." analyzed.")
end
  
function onStart()
    zones = layer:findZones(true)
    for i, zone in ipairs(zones) do
        local samplePath = zone:getParameter("SampleOsc.Filename")
        print("File: "..samplePath)
        local afile = AudioFile.open(samplePath)
        afile:analyzePitch(onPitchAnalysisFinished, Channel)
        while afile:getPitchAnalysisProgress(Channel) < 1 do
            if Cancel then
                afile:cancelPitchAnalysis(Channel)
                break
            end
            local progressPercent = 100 * afile:getPitchAnalysisProgress(Channel)
            print(string.format("Progress: %2d%%", progressPercent))
            wait(2000)
        end
        if Cancel then
            Cancel = false
            print("Canceled!")
            break
        end
        local pitch = afile:getPitch(0, -1, Channel)
        print("Analyzed Pitch: "..pitch)
    end
    print("Done!")
    Start = false
end
```