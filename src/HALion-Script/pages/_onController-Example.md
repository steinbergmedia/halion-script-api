```lua
-- Exclude MIDI mode messages and other special controllers.

function onController(event)
    if event.controller < 120 then
        print("Controller #: "..event.controller..", Value: "..event.value)
        postEvent(event)
    end
end
```
