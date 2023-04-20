```lua
-- Activate the voice groups for the parent layer.

layer = this.parent
layer:setParameter("VoiceManager.Voice Management", 1) -- Set Voice Manager to "On".
layer:setParameter("VoiceManager.VoiceGroups", true) -- Activate the Voice Groups.

voiceGroups = layer:getParameter("VoiceManager.VoiceGroupsData")

for i = 1, 128 do
    voiceGroups[i].maxPolyphony = 4
    voiceGroups[i].exclusiveGroup = 0 -- Set exclusive group to "Off".
    voiceGroups[i].stealMode = StealMode.lastNotePriority
end

layer:setParameter("VoiceManager.VoiceGroupsData", voiceGroups)
```
