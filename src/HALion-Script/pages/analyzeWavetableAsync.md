/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# analyzeWavetableAsync

>**analyzeWavetableAsync(wavetable, waves, callback)**

## Description

Function to analyze the waves of a [Wavetable Table](./Wavetable-Table.md) and update their spectral data asynchronously. Unlike [analyzeWavetable](./analyzeWavetable.md), this function runs in a parallel thread, allowing progress to be monitored via the returned progress object.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**wavetable**|The [Wavetable Table](./Wavetable-Table.md) whose spectral data will be updated. All waves are analyzed unless narrowed down by the waves argument.|table|
|**waves**|Specifies which waves to analyze. Accepts a single wave index (number) or a table of wave indices. Indices must be within the range of the wavetable. If ``nil``, all waves are analyzed.|number, table, or ``nil``|
|**callback**|A function called once analysis completes, is canceled, or fails. Receives the progress object as its argument, allowing the result or error state to be inspected. See Return Values for the fields available on this object.|function, optional|

## Return Values

Returns a progress object with the following fields:

|Field|Description|Value Type|
|:-|:-|:-|
|**.progress**|The analysis progress in the range from 0 to 1.|number|
|**.root**|The analyzed [Wavetable Table](./Wavetable-Table.md) on completion, otherwise ``nil``.|table|
|**.cancel**|Set this to ``true`` to abort the analysis. The callback will still be called, with ``.cancel`` set to ``true`` on the progress object.|boolean|
|**.error**|Error message if the analysis failed, otherwise ``nil``.|string|
|**.info**|User-definable field, for example, to manage several parallel threads.|string or table|

## Example


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

**See also:** [analyzeWavetable](./analyzeWavetable.md), [cancelWavetableCreation](./cancelWavetableCreation.md), [createWavetable](./createWavetable.md), [getWavetable](./getWavetable.md), [getWavetableCreationProgress](./getWavetableCreationProgress.md), [setWavetable](./setWavetable.md), [Wavetable Constants](./Wavetable-Constants.md), [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md), [Wavetable Table](./Wavetable-Table.md)