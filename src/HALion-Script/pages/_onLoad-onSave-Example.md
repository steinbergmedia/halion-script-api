```lua
-- Print the last three notes when calling onNote, onSave or onLoad.
-- The last three notes are remembered even after restoring the program.
  
local lastNotes = {}
  
function printLastNotes(callbackName)
    print("Last three notes when calling "..callbackName..":")
    for i = 1, 3 do
        if lastNotes[i] then
            print(i..":", "Note#:", lastNotes[i].noteNumber,", Velocity:", lastNotes[i].velocity)
        else
            print(i..":", "Note#: ---, Velocity: ---")
        end
    end
    print()
end
  
-- Play some notes to fill the table.

function onNote(event)
    postEvent(event)
    table.insert(lastNotes, 1, {noteNumber = event.note, velocity = event.velocity})
    if #lastNotes > 3 then -- Store maximum three notes.
        table.remove(lastNotes)
    end
    printLastNotes("onNote")
end
  
-- This will be called when the program is saved.

function onSave()
    local data = {}
    data.lastNotes = lastNotes
    printLastNotes("onSave")
    return data -- Any data in this table will be stored.
end
  
-- This will be called when the program is restored.

function onLoad(data)
    lastNotes = data.lastNotes -- Read the values from the data table.
    printLastNotes("onLoad")
end
```