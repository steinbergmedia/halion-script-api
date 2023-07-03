```lua
posStart, posEnd = string.find(getUserSubPresetPath(), "Steinberg/")
fileLocation = string.sub(getUserSubPresetPath(), 1, posEnd)

defineParameter("FileName", nil, "mapping.csv")
defineParameter("PrintSilent", nil, false)
defineParameter("WriteMapping", nil, false, function() if WriteMapping then writeMapping() end end)

zones = this.parent:findZones(true)

mapping = {
	{param = "Name",       value = function(zone) return zone.name end},
	{param = "File Name",  value = function(zone) return zone:getParameter("SampleOsc.Filename") end},
	{param = "Root Key",   value = function(zone) return zone:getParameter("SampleOsc.Rootkey") end},
}

function writeMapping()
	FileName = fileLocation..FileName
	startWriteOutputToFile(FileName, false, PrintSilent) -- First line of csv file.
		for i, map in ipairs(mapping) do
			if i < #mapping then
				printRaw(map.param, ";")
			else
				print(map.param)
			end
		end
	stopWriteOutputToFile()
	startWriteOutputToFile(FileName, true, PrintSilent) -- Add one line for each zone.
		for i, zone in ipairs(zones) do
			for j, map in ipairs(mapping) do
				if j < #mapping then
					printRaw(map.value(zone), ";")
				else
					print(map.value(zone))
				end
			end
		end
	stopWriteOutputToFile()
	WriteMapping = false
end
```