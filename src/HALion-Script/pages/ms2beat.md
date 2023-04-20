/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# ms2beat

>**ms2beat(ms)**

#### Description

Function to convert a duration in milliseconds to the equivalent number of beats. One beat equals a quarter note. The current tempo is taken into account.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**ms**|The duration in milliseconds.|number|

#### Return Values

Returns the number of beats (quarter notes) that is the equivalent of the specified duration.

#### Example

```lua
-- Print the note length in number of beats.

function onRelease(event)
    postEvent(event)
    local noteLength = ms2beat(getNoteDuration(event.note))
    print(noteLength, "beats")
end
```

**See also:** [beat2ms](./beat2ms.md), [ms2samples](./ms2samples.md), [samples2ms](./samples2ms.md)