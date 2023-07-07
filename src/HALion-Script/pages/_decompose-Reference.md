/* ANCHOR: all */

// ANCHOR: function
>**decompose{arguments}**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to decompose an audio file into its tonal and noise components. You specify the audio file with the [AudioFile](./Audio-File.md) object that is returned by the [AudioFile.open](./AudioFileopen.md) function. The decompose function can be configured with named arguments. The named arguments are optional and if called without, decompose will be executed with its default settings.

**Available in:** Controller.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**callback**|This callback function is called with the [AudioFile](./Audio-File.md) object and the file path of the ouput sample(s) as arguments after the original sample has been decomposed. If called without a callback function, decompose will be executed in the same thread. If called with a callback function as argument, decompose will be executed in a separate, parallel thread.|function, optional|
|**start**|The start position in samples. The default is 0 samples. The created samples are trimmed to this position.|number, optional|
|**length**|The duration in samples. Set this to less than or equal to 0 to use all samples from the specified ``start`` to the end of the sample. By default everything from ``start`` to the end of the sample is decomposed. The created samples are trimmed to this length.|number, optional|
|**sensitivity**|The sensitivity determines the minimum level difference that is needed to distinguish the tonal from the noise signals. The sensitivity is specified in dB and the value range is from -96 to 0 dB. The default is -24 dB.|number, optional|
|**cutoff**|The cutoff sets the frequency limit below which the algorithm detects tonal signals. Any signals above the cutoff frequency are classified as noise, regardless of the sensitivity and duration arguments. The cutoff is specified in Hz and the value range is from 20 to 20000 Hz. The default is 20000 Hz.|number, optional|
|**duration**|The duration allows you to specify the minimum length for a tonal signal in milliseconds. Signals that are shorter than the specified duration are classified as noise, longer signals are classified as tonal. The value range is fom 0 to 100 ms. The default is 80 ms.|number, optional|
|**tonalLevel**|Use this to specify the level of the tonal component in dB. The value range is from -96 to +12 dB. The default is 0 dB.|number, optional|
|**noiseLevel**|Use this to specify the level of the noise component in dB. The value range is from -96 to +12 dB. The default is 0 dB.|number, optional|
|**outputMode**|This defines if just one of the components, both or a mix of them is created. See Decompose Output Modes for details.|number, optional|
|**outputPath**|This specifies the path for the decomposed audio files. If the string is empty, invalid, or nil, the file paths of the decompose settings of the plug-in will be used. The default is nil.|string, optional|

>&#10069; Samples that were loaded from a VST Sound container can only be decomposed if the ouputPath argument is set to a valid file location. You can use getDecomposeOutputPath to obtain the file location from the decompose settings of the plug-in.
// ANCHOR_END: arguments

#### Example

// ANCHOR: example
{{#include ./_decompose-Example.md}}
// ANCHOR_END: example

/* ANCHOR_END: all */