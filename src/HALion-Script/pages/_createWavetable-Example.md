```lua
creationModes = { "EqualDist", "Exponential", "Spectral", "SpectralVoiced", "OverlapAdd", }
overlapModes = { "None", "2x", "4x", "8x", "16x", }
channelSelectionModes = { "Multi", "Sum", "Left", "Right", "Center", "LFE", "RearLeft", "RearRight", }
winTypes = { "Rectangular", "Cosine", "Bartlett", "Hanning", "Hamming", "Blackman", "BlackmanHarris", }
winSizeModes = { "Auto", "FixedIndividual", "FixedCommon", }

defineParameter { name = "StartProcess", default = false, onChanged = function() if StartProcess then onStart() end end }
defineParameter { name = "CancelProcess", default = false}
defineParameter { name = "AnalyzeWavetable", default = true }
defineParameter { name = "CreationMode", default = wavetable.CreationMode.equalDist, strings = creationModes }
defineParameter { name = "NumWaves", default = 1, min = 0, max = 0x80000000 - 1, increment = 1 }
defineParameter { name = "Threshold", default = -40, min = -96, max = 0, increment = 0.1 }
defineParameter { name = "Sensitivity", default = 25, min = 1, max = 100, increment = 0.1 }
defineParameter { name = "Overlap", default = wavetable.CreationOverlap.mode4x, strings = overlapModes }
defineParameter { name = "IncludeWindow", default = false }
defineParameter { name = "SampleStart", default = 0, min = 0, max = 1000, increment = 1 }
defineParameter { name = "SampleLength", default = 0, min = 0, max = 1000, increment = 1 }
defineParameter { name = "ChannelSelection", default = wavetable.ChannelSelection.multi, strings = channelSelectionModes }
defineParameter { name = "WinType", default = wavetable.WinType.blackman, strings = winTypes }
defineParameter { name = "WinSizeMode", default = wavetable.WinSizeMode.auto, strings = winSizeModes }
defineParameter { name = "WinSizeCh1", default = 512, min = 0, max = 8192, increment = 0.01 }
defineParameter { name = "WinSizeCh2", default = 512, min = 0, max = 8192, increment = 0.01 }
defineParameter { name = "WinSizeCh3", default = 512, min = 0, max = 8192, increment = 0.01 }
defineParameter { name = "WinSizeCh4", default = 512, min = 0, max = 8192, increment = 0.01 }
defineParameter { name = "WinSizeCh5", default = 512, min = 0, max = 8192, increment = 0.01 }
defineParameter { name = "WinSizeCh6", default = 512, min = 0, max = 8192, increment = 0.01 }
defineParameter { name = "WinCrossfade", default = 10, min = 0, max = 100, increment = 0.1 }
defineParameter { name = "SpectralEnvRes", default = 500, min = 250, max = 1000, increment = 0.1 }
defineParameter { name = "FreqLimit", default = 20000, min = 10, max = 22000, increment = 1 }
 
function onStart()
    zones = this.parent:findZones(true)
    for i, zone in ipairs(zones) do
		local function onFinished(afile, wt)
			print("Progress: 100%")
			if wt then
				print("Wavetable of "..afile.fileName.." created.")
				print("Number of Waves: "..#wt)
				zone:setParameter("ZoneType", 4)
				zone:setWavetable(1, wt)
			end
		end
		local samplePath = zone:getParameter("SampleOsc.Filename")
		local afile = AudioFile.open(samplePath)
		if afile then
			local startSamples = SampleStart * afile.rate/1000
			local lengthSamples = SampleLength * afile.rate/1000
			local winSize = {   WinSizeCh1,
			                    WinSizeCh2,
			                    WinSizeCh3,
			                    WinSizeCh4,
			                    WinSizeCh5,
			                    WinSizeCh6 }
			print("Create Wavetable "..samplePath)
			afile:createWavetable{
				callback = onFinished,
				start = startSamples,
				length = lengthSamples,
				analyzeWavetable = AnalyzeWavetable,
				creationMode = CreationMode,
				numWaves = NumWaves,
				threshold = Threshold,
				sensitivity = Sensitivity,
				overlap = Overlap,
				includeWindow = IncludeWindow,
				channelSelection = ChannelSelection,
				winType = WinType,
				winSizeMode = WinSizeMode,
				winSize = winSize,
				winCrossfade = WinCrossfade,
				spectralEnvRes = SpectralEnvRes,
				freqLimit = FreqLimit,
			}
			while afile:getWavetableCreationProgress() < 1 do
				if CancelProcess then
					afile:cancelWavetableCreation()
					break
				end
				local progress, errorMessage = afile:getWavetableCreationProgress()
				if errorMessage then
					print(errorMessage)
					break
				else
					local progressPercent = 100 * progress
					print(string.format("Progress: %2d%%", progressPercent))
					wait(2000)
				end
			end
			if CancelProcess then
				CancelProcess = false
				print("Wavetable creation canceled!")
				break
			end
		end
	end
	print("Wavetable creation finished.")
	StartProcess = false
end
```
