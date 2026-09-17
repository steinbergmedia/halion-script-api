/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# analyzeWavetable

>**analyzeWavetable(wavetable, waves)**

{{#include ../../_Version.md:halion7510}}

## Description

Function to analyze the waves of a [Wavetable Table](./Wavetable-Table.md) and update their spectral data synchronously. Unlike [analyzeWavetableAsync](./analyzeWavetableAsync.md), this function runs in the same thread, blocking execution until the analysis is complete.

Waves in the wavetable are organized into *wave sequences* — groups of consecutive waves sharing the same [.filename](./Wavetable-Table.md#wave-fields). For each wave sequence, ``analyzeWavetable`` reads the [.linkEnvelope](./Wavetable-Table.md#wave-fields) field of the first wave of the sequence. If the field is ``true``, the [.time](./Wavetable-Table.md#wave-fields) of each wave in that sequence is synchronized with its [.samplePos](./Wavetable-Table.md#wave-fields), and [.linkEnvelope](./Wavetable-Table.md#wave-fields) is set to ``true`` for all waves of that sequence.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
{{#include ./_analyzeWavetable-Arguments.md}}


## Return Values

Returns a [Wavetable table](./Wavetable-Table.md).

## Example


```lua
defineParameter { name = "Process", default = false, onChanged = function() if Process then onProcess() end end }
defineParameter { name = "WavetableStart", default = 0, min = 0, max = 1024, increment = 1 }
defineParameter { name = "WavetableLength", default = 0, min = 0, max = 1024, increment = 1 }

function onProcess()
    zones = this.parent:findZones(true)
    for i, zone in ipairs(zones) do
		local wt = zone:getWavetable (1)
		if wt then
			if WavetableStart > 0 then
				if WavetableLength > 1 then
					local waves = {}
					local startIdx = math.min (WavetableStart, #wt)
					local endIdx = math.min (WavetableStart + WavetableLength - 1, #wt)
					for idx = startIdx, endIdx do table.insert(waves, idx) end
					print(string.format("Analyze Waves %d to %d of Wavetable ", startIdx, endIdx)..wt.name)
					wt = analyzeWavetable(wt, waves)
				elseif WavetableLength == 1 then
					local wave = math.min (WavetableStart, #wt)
					print(string.format("Analyze Wave %d of Wavetable ", wave)..wt.name)
					wt = analyzeWavetable(wt, wave)
				else
					print("Nothing to analyze of Wavetable "..wt.name)
				end
			else
				print("Analyze Wavetable "..wt.name)
				wt = analyzeWavetable(wt)
			end
			zone:setWavetable (1, wt)
		end
    end
    print("Wavetable analysis finished.")
    Process = false
end
```

**See also:** [analyzeWavetableAsync](./analyzeWavetableAsync.md), [cancelWavetableCreation](./cancelWavetableCreation.md), [createWavetable](./createWavetable.md), [getWavetable](./getWavetable.md), [getWavetableCreationProgress](./getWavetableCreationProgress.md), [setWavetable](./setWavetable.md), [Wavetable Constants](./Wavetable-Constants.md), [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md), [Wavetable Table](./Wavetable-Table.md)
