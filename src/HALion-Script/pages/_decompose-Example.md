```lua
outputModes = { "Tonal", "Noise", "All", "Mix", }
 
defineParameter { name = "Decompose", default = false, onChanged = function() if Decompose then onDecompose() end end }
defineParameter { name = "Cancel", default = false}
defineParameter { name = "Sensitivity", default = -24, min = -96, max = 0, increment = 0.1 }
defineParameter { name = "Cutoff", default = 20000, min = 20, max = 20000, increment = 1 }
defineParameter { name = "Duration", default = 80, min = 0, max = 100, increment = 0.1 }
defineParameter { name = "TonalLevel", default = 0, min = -96, max = 12, increment = 0.1 }
defineParameter { name = "NoiseLevel", default = 0, min = -96, max = 12, increment = 0.1 }
defineParameter { name = "Start", default = 0, min = 0, max = 1000, increment = 1 }
defineParameter { name = "Length", default = 0, min = 0, max = 1000, increment = 1 }
defineParameter { name = "OutputMode", default = DecomposeOutputMode.all, strings = outputModes }
defineParameter { name = "OutputPath", default = "" }
defineParameter { name = "Subfolder", default = "" }
 
function onDecomposeFinished(audioFile, file1, file2)
    print("Progress: 100%")
    print(audioFile.fileName, audioFile.length)
    if file1 then
        local afile1 = AudioFile.open(file1)
        print(afile1.fileName, afile1.length)
    end
    if file2 then
        local afile2 = AudioFile.open(file2)
        print(afile2.fileName, afile2.length)
    end
end
 
function onDecompose()
    zones = this.parent:findZones(true)
    for i, zone in ipairs(zones) do
        local samplePath = zone:getParameter("SampleOsc.Filename")
        local afile = AudioFile.open(samplePath)
        local startSamples = Start * afile.rate/1000
        local lengthSamples = Length * afile.rate/1000
        if not Subfolder == "" then
            if OutputPath == "" then
                OutputPath = getDecomposeOutputPath(samplePath)..Subfolder
            else
                OutputPath = OutputPath..Subfolder
            end
        end
        print("Decompose: "..samplePath)
        afile:decompose{
            callback = onDecomposeFinished,
            start = startSamples,
            length = lengthSamples,
            sensitivity = Sensitivity,
            cutoff = Cutoff,
            duration = Duration,
            tonalLevel = TonalLevel,
            noiseLevel = NoiseLevel,
            outputMode = OutputMode,
            outputPath = OutputPath,
        }
        while afile:getDecomposeProgress() < 1 do
            if Cancel then
                afile:cancelDecompose()
                break
            end
            local progress, errorMessage = afile:getDecomposeProgress()
            if errorMessage then
                print(errorMessage)
                break
            end
            local progressPercent = 100 * progress
            print(string.format("Progress: %2d%%", progressPercent))
            wait(2000)
        end
        if Cancel then
            Cancel = false
            print("Decompose Canceled!")
            break
        end
    end
    print("Decompose finished.")
    Decompose = false
end
```