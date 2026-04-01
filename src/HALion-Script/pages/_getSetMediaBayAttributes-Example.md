```lua
posStart, posEnd = string.find(getUserSubPresetPath(), "Steinberg/")
fileLocation = string.sub(getUserSubPresetPath(), 1, posEnd)

defineParameter("FileName", nil, "test.vstpreset")
defineParameter("ReadAttributes", nil, false,
    function() if ReadAttributes then onReadAttributesChanged() end end)
defineParameter("WriteAttributes", nil, false,
    function() if WriteAttributes then onWriteAttributesChanged() end end)

function onReadAttributesChanged()
    local attrs = getMediaBayAttributes(fileLocation..FileName)
    for k, v in pairs(attrs) do
        print(k, "=", v)
    end
    ReadAttributes = false
end

function onWriteAttributesChanged()
    local newAttrs = {
        MediaRating       = "4",
        MusicalStyle      = "Electronic",
        MusicalProperties = "Dark|Soft",
    }
    setMediaBayAttributes(fileLocation..FileName, newAttrs)
    WriteAttributes = false
end
```
