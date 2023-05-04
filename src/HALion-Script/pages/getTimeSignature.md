/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getTimeSignature

>**getTimeSignature()**

## Description

Function to read the time signature from the host software.

**Available in:** Processor.

## Return Values

Returns the numerator and denominator of the time signature. If no time signature information is available, the value -1 is returned for both the numerator and the denominator.

## Example

```lua
-- Print the time signature of the host software.

function onInit()
    num, denom = getTimeSignature()
    print(num.."/"..denom)   
end
```

**See also:** [getTempo](./getTempo.md)