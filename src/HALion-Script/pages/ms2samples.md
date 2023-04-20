/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# ms2samples

>**ms2samples(ms)**

#### Description

Function to convert a duration in milliseconds to the equivalent number of samples. The conversion takes into account the sample rate at which the plug-in runs.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**ms**|The duration in milliseconds.|number|

#### Return Values

Returns the number of samples that is the equivalent of the specified duration in milliseconds.

#### Example

```lua
-- Print the duration 1000 ms in number of samples.

function onNote(event)
    print(ms2samples(1000), "samples")
end
```

**See also:** [samples2ms](./samples2ms.md), [ms2beat](./ms2beat.md), [beat2ms](./beat2ms.md)