/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# samples2ms

>**samples2ms(samples)**

## Description

Function to convert a number of samples to the equivalent duration in milliseconds. The sample rate at which the plug-in runs is taken into account.

**Available in:** Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**samples**|The number of samples.|number|

## Return Values

Returns the specified number of samples as duration in milliseconds.

## Example

```lua
-- Print the project sample rate in ms.

function onNote(event)
    fs = getSamplingRate()
    print(samples2ms(fs), "ms")
end
```

**See also:** [ms2samples](./ms2samples.md), [ms2beat](./ms2beat.md), [beat2ms](./beat2ms.md)