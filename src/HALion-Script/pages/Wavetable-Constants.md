/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# Wavetable Constants

## Description

Constants defining the upper limits of the wavetable engine. They cover the maximum number of waves per wavetable, the maximum wave size in samples, the maximum spectrum size in bins, and the maximum number of channels per wave. These values can be used in scripts to validate or constrain wavetable parameters.

**Available in:** Controller.

|Enumerator|Value|
|:-|:-|
|wavetable.maxWaves|1024|
|wavetable.maxWaveSize|8192|
|wavetable.maxSpectrumSize|4096|
|wavetable.maxChannels|6|

**See also:** [analyzeWavetable](./analyzeWavetable.md), [analyzeWavetableAsync](./analyzeWavetableAsync.md), [cancelWavetableCreation](./cancelWavetableCreation.md), [createWavetable](./createWavetable.md), [getWavetable](./getWavetable.md), [getWavetableCreationProgress](./getWavetableCreationProgress.md), [setWavetable](./setWavetable.md), [Wavetable Enumeration Types](./Wavetable-Enumeration-Types.md), [Wavetable Table](./Wavetable-Table.md)