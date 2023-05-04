/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getSamplingRate

>**getSamplingRate()**

## Description

Function to retrieve the sample rate from the host software.

**Available in:** Processor.

## Return Values

Returns the sample rate of the host software in Hertz (i.e., samples per seconds).

## Example

```lua
-- Print the sample rate of the host software.

function onInit()
    fs = getSamplingRate()
    print(fs, "Hz")   
end
```