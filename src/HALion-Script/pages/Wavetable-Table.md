/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Wavetable Table

{{#include ../../_Version.md:halion750}}

## Description

Wavetables are managed through a special predefined table called the Wavetable table. The [getWavetable](./getWavetable.md) function returns a table containing a sub-table for each wave, up to a maximum of [wavetable.maxWaves](./Wavetable-Constants.md) = 1024 waves. Waves are referenced by their index and can be added and removed using ``table.insert`` and ``table.remove`` from Lua's table library. While values within the Wavetable table and its wave sub-tables can be modified freely, their structure must remain exactly as defined below.

The fields in the Wavetable table and its wave sub-tables serve different purposes: some control how the wavetable is played back by the synthesis engine, others configure how wave data is extracted from a sample when calling [analyzeWavetable](./analyzeWavetable.md), and others hold metadata or the wave data itself. The Purpose column below shows which category each field belongs to.

Use [createWavetable](./createWavetable.md) to build the table and [analyzeWavetable](./analyzeWavetable.md) to fill its wave data fields. Any changes to the table only take effect in the wavetable engine after calling [setWavetable](./setWavetable.md).

**Available in:** Controller.

## Wavetable Fields

|Field|Description|Value Type|Purpose|
|:-|:-|:-|:-|
|**.loopStart**|Specifies the index of the first wave included in loop playback. The value may be a float, allowing the loop to start between two waves.|number|Playback|
|**.loopEnd**|Specifies the index of the last wave included in loop playback. The value may be a float, allowing the loop to end between two waves.|number|Playback|
|**.name**|The name of the wavetable.|string|Metadata|
|**.normalizeMode**|Controls how extracted waves are level-normalized during playback. Waves extracted from different regions of a sample often vary in level; normalization compensates for these differences. Options: **Off** (1) — preserves the original levels; **Wave** (2) — normalizes each wave individually; **Sequence** (3) — normalizes the entire sequence. The default is **Off** (1). See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#normalize-mode).|enum or number|Playback|
|**.persistentWaves**|When ``true`` (the default), all wavetable data is stored with the preset, which results in redundant data if the same wavetable is used more than once. When ``false``, the wavetable data is not stored with the preset but can be loaded from a reference preset instead, for example.|boolean|Storage|
|**.pitchEnvelope**|When ``true``, the wavetable uses the analyzed pitch from the original sample, playing each wave with the per‑channel fundamental frequency. When ``false`` (the default), all waves play back at the pitch of the triggered note.|boolean|Playback|
|**.phaseMode**|Controls how the phases of extracted waves are treated during playback. Phase relationships between waves can cause cancellation artifacts. Options: **Keep Original Phases** (1) — preserves the original phase of each wave; **Align Phases** (2) — aligns phases across waves; **Reset Phases to Zero** (3) — zeros out all phases. The default is **Align Phases** (2). See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#phase-mode).|enum or number|Playback|
|**.interpolatePhase**|When ``true``, the wavetable envelope crossfades both the levels and phases between waves. This can further reduce phase cancellation artifacts during playback. The default is ``false``.|boolean|Playback|

## Wave Fields

|Field|Description|Value Type|Purpose|
|:-|:-|:-|:-|
|**.channelSelection**|Selects which channel(s) are analyzed when calling [analyzeWavetable](./analyzeWavetable.md). Options: **Multi** (1) — analyzes all available channels; **Sum** (2) — mixes all channels before analysis; or one of the six discrete channels: **Left** (3), **Right** (4), **Center** (5), **LFE** (6), **Left Surround** (7), **Right Surround** (8). The selected channel must exist in the source sample. See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#channel-selection).|enum or number|Analysis|
|**.channelConfig**|The channel configuration of the wavetable, used during playback. HALion's wavetable synthesis supports multi-channel formats up to 5.1, meaning each wave can contain spectra for up to six channels ([wavetable.maxChannels](./Wavetable-Constants.md) = 6). When calling [createWavetable](./createWavetable.md), this is derived automatically from the ``channelSelection`` argument: **Multi** maps the number of channels in the audio file to the matching configuration (e.g., two channels → Stereo, three channels → 3.0, four channels → 4.0); **Sum** or any discrete channel selection results in **Mono**. The configuration can be changed freely after [createWavetable](./createWavetable.md) has been called — reducing it leaves unused channels, expanding it adds empty ones. For example, setting a stereo wave to **Mono** retains only the left channel. Changing this parameter also affects how channels are assigned to the six internal bus channels — **Quadro**, for example, uses channels 1, 2, 5, and 6.  Note that calling [analyzeWavetable](./analyzeWavetable.md) resets the channel configuration if it does not match the number of channels in the source file. For example, a two-channel file set to **Quadro** will be reset to **Stereo**, whereas a four-channel file set to **LCR + Lfe** will remain unchanged since the channel count already matches. See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#channel-configuration).|enum or number|Playback|
|**.filename**|The file name of the sample from which this wave was extracted.|string|Metadata|
|**.freqLimit**|Allows you to limit the playback to the frequency range that the wave actually uses. Any frequencies above this limit are skipped during synthesis, which can lower CPU load. Raise this value to preserve more high-frequency content; lower it to save processing power. The default is 20000 Hz.|number|Playback|
|**.samplePos**|The position in samples within the source file at which this wave was extracted. This position is also used when calling [analyzeWavetable](./analyzeWavetable.md).|number|Analysis|
|**.winCrossfade**|The crossfade duration applied to the edges of the Rectangular window, expressed as a percentage of the analysis window size. Softens the hard boundaries of the Rectangular window to reduce its side lobes. The default is 10.|number|Analysis|
|**.winSizeMode**|Specifies how the window size is determined during spectral analysis. **Auto** (1) derives the window size from the detected fundamental frequency of each channel. **Fixed Individual** (2) uses the per-channel sizes specified in ``.winSize[n]``. **Fixed Common** (3) uses the same ``.winSize[1]`` value for all channels. The default is **Auto** (1). See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#window-size-mode).|enum or number|Analysis|
|**.winType**|The window function applied during spectral analysis. Different window types affect side lobe suppression, which changes how the analyzed spectrum sounds. Options: **Rectangular** (1), **Cosine** (2), **Bartlett** (3), **Hanning** (4), **Hamming** (5), **Blackman** (6), **Blackman-Harris** (7). **Blackman** (6, default) is a good general-purpose choice. **Blackman-Harris** (7) offers the strongest side lobe suppression. **Rectangular** (1) has high side lobes, causing energy from strong partials to bleed into neighboring bins. See [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md#window-type).|enum or number|Analysis|
|**.curve**|The curvature of the envelope segment from -1 to 1. The default is 0.|number|Playback|
|**.linkEnvelope**|When ``true``, the envelope time of this wave is synchronized with its position in the source sample, ensuring the envelope progresses in chronological order with the sample markers. [createWavetable](./createWavetable.md) initializes this field to ``true`` for all generated waves. Waves in the wavetable are organized into *wave sequences* — groups of consecutive waves sharing the same ``.filename``. For each sequence, [setWavetable](./setWavetable.md) reads the ``.linkEnvelope`` field of the first wave and propagates that value to all waves of the sequence in the oscillator's wavetable. Additionally, [setWavetable](./setWavetable.md) verifies that the ``.time`` of each wave is consistent with its ``.samplePos``. If any wave in a sequence fails this check, ``.linkEnvelope`` is set to ``false`` for all waves of that sequence in the oscillator's wavetable, overriding the ``.linkEnvelope`` field of the first wave. [analyzeWavetable](./analyzeWavetable.md) and [analyzeWavetableAsync](./analyzeWavetableAsync.md) read the field of the first wave in the same way; see those pages for how they apply it. The default is ``true``.|boolean|Playback|
|**.spectralEnvRes**|Defines how closely the spectral envelope follows the distribution of the magnitudes across the spectrum. The spectral envelope shapes the formant filter: higher values produce a smoother filter curve with less pronounced formants, while lower values cause the filter curve to track spectral levels more tightly, yielding a more detailed formant response. The default is 500 Hz, which is suitable for most audio content.|number|Analysis|
|**.time**|The duration of the envelope segment in seconds. The default is 1.|number|Playback|
|**.spectrum**|An array of six channels — left, right, center, LFE, left surround, and right surround — where each channel entry holds an array with the spectrum of that channel. See [Tables per Channel](#tables-per-channel) for details.|table|Wave Data|
|**.fundamental**|An array of six channels — left, right, center, LFE, left surround, and right surround — where each channel entry holds the fundamental frequency for that channel. See [Tables per Channel](#tables-per-channel) for details.|table|Wave Data|
|**.winSize**|An array of six channels — left, right, center, LFE, left surround, and right surround — where each channel entry holds the window size for that channel. See [Tables per Channel](#tables-per-channel) for details.|table|Wave Data|
|**.spectralEnv**|An array of six channels — left, right, center, LFE, left surround, and right surround — where each channel entry holds the spectral envelope of that channel. See [Tables per Channel](#tables-per-channel) for details.|table|Wave Data|

## Tables per Channel

|Field|Description|Value Type|Purpose|
|:-|:-|:-|:-|
|**.spectrum\[n\]**|A table containing the spectrum for the n-th channel, with three fields: ``.freq``, ``.phase``, and ``.magn``, each holding an array of bin values. The bins start at index 0, which holds the DC component of the spectrum. The number of bins can vary for each wave and must be read from the array itself. In theory, it can go up to [wavetable.maxSpectrumSize](./Wavetable-Constants.md) = 4096. See [Spectrum Fields](#spectrum-fields) for a description of these three fields.|table|Wave Data|
|**.fundamental\[n\]**|The fundamental frequency of the n-th channel in Hz. Defaults to 20 Hz if the pitch analysis did not determine a value during wavetable creation.|number|Wave Data|
|**.winSize\[n\]**|The analysis window size in samples for the n-th channel. Defaults to 512 if the pitch analysis did not determine a value during wavetable creation.|number|Wave Data|
|**.spectralEnv\[n\]**|An array containing the spectral envelope of the n-th channel. Like the bins of ``.spectrum[n]``, the values start at index 0. Each value holds the magnitude of the spectral envelope for the corresponding bin. The spectral envelope is a smoothed representation of the magnitudes of the spectrum; ``.spectralEnvRes`` controls how closely it follows them. The number of values can vary for each wave and must be read from the array itself.|table|Wave Data|

## Spectrum Fields

|Field|Description|Value Type|Purpose|
|:-|:-|:-|:-|
|**.freq**|An array where each entry holds the frequency of a bin, expressed as a multiple of the fundamental frequency.|table|Wave Data|
|**.phase**|An array where each entry holds the phase of a bin in radians, ranging from -π to π.|table|Wave Data|
|**.magn**|An array where each entry holds the magnitude of a bin, ranging from 0 to 1.|table|Wave Data|

>&#10069; The bins start at index 0, which holds the DC component of the spectrum.

## Example

```lua
-- Inspect wavetable.
-- Prints the wavetable engine limits, followed by a readable summary of the
-- Wavetable Table loaded on an oscillator.
-- Useful for verifying that createWavetable produced the expected result.
--
-- Oscillator   : 1 or 2 — which oscillator to inspect.
-- MaxWaves     : 0 = print all waves; N = print only the first N waves.
-- ShowChannels : when true, prints the per-channel fundamentals, window sizes,
--                bin counts and spectral envelope entry counts.
-- MaxBins      : 0 = skip bin data; N = print the first N bins and the first N
--                spectral envelope entries per channel, both starting at index 0.
-- Press Inspect to run.

oscillatorOptions = { "1", "2" }

defineParameter { name = "Inspect",      default = false, onChanged = function() if Inspect then onInspect() end end }
defineParameter { name = "Oscillator",   default = 1, min = 1, max = 2, increment = 1 }
defineParameter { name = "MaxWaves",     default = 0, min = 0, max = 1024, increment = 1 }
defineParameter { name = "ShowChannels", default = true }
defineParameter { name = "MaxBins",      default = 0, min = 0, max = 4096, increment = 1 }

-- Enum name lookup tables.
local normalizeModeNames    = { [1]="Off", [2]="Wave", [3]="Sequence" }
local phaseModeNames        = { [1]="Keep Original", [2]="Align", [3]="Reset to Zero" }
local winTypeNames          = { [1]="Rectangular", [2]="Cosine", [3]="Bartlett",
                                [4]="Hanning", [5]="Hamming", [6]="Blackman", [7]="BlackmanHarris" }
local winSizeModeNames      = { [1]="Auto", [2]="FixedIndividual", [3]="FixedCommon" }
local channelSelectionNames = { [1]="Multi", [2]="Sum", [3]="Left", [4]="Right",
                                [5]="Center", [6]="LFE", [7]="RearLeft", [8]="RearRight" }
local channelConfigNames    = { [1]="Mono", [2]="Stereo", [3]="LCR", [4]="LCRLfe",
                                [5]="Quadro", [6]="QuadroLfe", [7]="5.0", [8]="5.1" }

local function enumName(t, v)
    return t[v] and string.format("%s (%d)", t[v], v) or tostring(v)
end

local function boolStr(v)
    return v and "true" or "false"
end

function onInspect()
    -- ── Wavetable engine limits ──────────────────────────────────────────
    print(string.rep("─", 60))
    print("Wavetable Constants")
    print(string.rep("─", 60))
    print(string.format("  maxWaves        : %d", wavetable.maxWaves))
    print(string.format("  maxSpectrumSize : %d", wavetable.maxSpectrumSize))
    print(string.format("  maxChannels     : %d", wavetable.maxChannels))
    print("")

    local zones = this.parent:findZones(true)
    if #zones == 0 then
        print("No zones found in parent layer.")
        Inspect = false
        return
    end

    for zi, zone in ipairs(zones) do
        local wt = zone:getWavetable(Oscillator)
        if not wt then
            print(string.format("Zone %d: no wavetable on oscillator %d.", zi, Oscillator))
        else
            local totalWaves  = #wt
            local printWaves  = (MaxWaves == 0) and totalWaves or math.min(MaxWaves, totalWaves)

            -- ── Wavetable-level fields ───────────────────────────────────────
            print(string.rep("─", 60))
            print(string.format('Zone %d, Osc %d: "%s"', zi, Oscillator, tostring(wt.name)))
            print(string.rep("─", 60))
            print(string.format("  Waves         : %d", totalWaves))
            print(string.format("  Loop          : %.3g → %.3g", wt.loopStart, wt.loopEnd))
            print(string.format("  NormalizeMode : %s", enumName(normalizeModeNames,  wt.normalizeMode)))
            print(string.format("  PhaseMode     : %s", enumName(phaseModeNames,      wt.phaseMode)))
            print(string.format("  InterpPhase   : %s", boolStr(wt.interpolatePhase)))
            print(string.format("  PitchEnvelope : %s", boolStr(wt.pitchEnvelope)))
            print(string.format("  PersistentWaves: %s", boolStr(wt.persistentWaves)))

            -- ── Per-wave fields ──────────────────────────────────────────────
            if printWaves > 0 then
                print("")
                if printWaves < totalWaves then
                    print(string.format("  Showing first %d of %d waves:", printWaves, totalWaves))
                else
                    print(string.format("  Waves (%d):", totalWaves))
                end

                local afileCache = {}   -- cache AudioFile objects by filename
                for wi = 1, printWaves do
                    local w = wt[wi]
                    local fname = tostring(w.filename)
                    if not afileCache[fname] then
                        afileCache[fname] = AudioFile.open(w.filename) or false
                    end
                    local af          = afileCache[fname]
                    local srcChannels = af and af.channels or "?"
                    print(string.format("  [%d] file='%s'  channels=%s  samplePos=%d smp",
                        wi, fname, tostring(srcChannels), w.samplePos))
                    print(string.format("       ChannelSel=%-18s  ChannelCfg=%s",
                        enumName(channelSelectionNames, w.channelSelection),
                        enumName(channelConfigNames,    w.channelConfig)))
                    print(string.format("       WinType=%-20s  WinSizeMode=%s",
                        enumName(winTypeNames,      w.winType),
                        enumName(winSizeModeNames,  w.winSizeMode)))
                    print(string.format("       WinCrossfade=%.1f %%  SpectralEnvRes=%.0f Hz  FreqLimit=%.0f Hz",
                        w.winCrossfade, w.spectralEnvRes, w.freqLimit))
                    print(string.format("       Time=%.3g s  Curve=%.3g  LinkEnvelope=%s",
                        w.time, w.curve, boolStr(w.linkEnvelope)))

                    -- Per-channel data (fundamental, winSize, spectrum, spectral envelope).
                    if ShowChannels and w.fundamental then
                        for ch = 1, 6 do
                            local fund = w.fundamental  and w.fundamental[ch]
                            local wsz  = w.winSize      and w.winSize[ch]
                            local sp   = w.spectrum     and w.spectrum[ch]
                            local senv = w.spectralEnv  and w.spectralEnv[ch]
                            -- Bins and envelope entries both start at index 0, so each
                            -- array holds one entry more than the length operator reports.
                            local nbin = (sp and sp.freq) and #sp.freq or 0
                            local nenv = senv and #senv or 0
                            local bins = (nbin > 0) and (nbin + 1) or nil
                            local envs = (nenv > 0) and (nenv + 1) or nil
                            if fund or wsz or bins then
                                print(string.format(
                                    "         ch%d: fundamental=%.1f Hz  winSize=%s  spectrum=%s bins  spectralEnv=%s entries",
                                    ch,
                                    fund or 0,
                                    wsz  and tostring(wsz)  or "–",
                                    bins and tostring(bins) or "–",
                                    envs and tostring(envs) or "–"))
                                if MaxBins > 0 and bins then
                                    local printBins = math.min(MaxBins, bins)
                                    for bi = 0, printBins - 1 do
                                        print(string.format(
                                            "           bin %4d: freq=%8.4f  phase=%8.4f  magn=%8.4f",
                                            bi, sp.freq[bi], sp.phase[bi], sp.magn[bi]))
                                    end
                                    if printBins < bins then
                                        print(string.format("           ... (%d more bins not shown)", bins - printBins))
                                    end
                                end
                                -- Listed separately, because the envelope stops earlier than
                                -- the spectrum.
                                if MaxBins > 0 and envs then
                                    local printEnv = math.min(MaxBins, envs)
                                    for ei = 0, printEnv - 1 do
                                        print(string.format(
                                            "           spectralEnv %4d: %8.4f", ei, senv[ei]))
                                    end
                                    if printEnv < envs then
                                        print(string.format("           ... (%d more envelope entries not shown)", envs - printEnv))
                                    end
                                end
                            end
                        end
                    end
                end

                if printWaves < totalWaves then
                    print(string.format("  ... (%d more waves not shown)", totalWaves - printWaves))
                end
            end

            print("")
        end
    end

    print("Inspect complete.")
    Inspect = false
end
```

**See also:** [analyzeWavetable](./analyzeWavetable.md), [analyzeWavetableAsync](./analyzeWavetableAsync.md), [cancelWavetableCreation](./cancelWavetableCreation.md), [createWavetable](./createWavetable.md), [getWavetable](./getWavetable.md), [getWavetableCreationProgress](./getWavetableCreationProgress.md), [setWavetable](./setWavetable.md), [Wavetable Constants](./Wavetable-Constants.md), [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md)
