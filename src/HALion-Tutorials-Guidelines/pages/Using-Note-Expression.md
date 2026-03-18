/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Tutorials & Guidelines](./HALion-Tutorials-Guidelines.md) / [Tutorials](./Tutorials.md) /

# Using Note Expression

---

**On this page:**

[[_TOC_]]

---

Note expression allows you to control per-note parameters that change while a note is held. Unlike MIDI controllers, which affect all notes on a MIDI channel simultaneously, note expression is tied to individual notes. This makes it possible to play polyphonically while controlling parameters such as pitch, volume, or panning for each note independently. Cubase supports note expression natively: it converts MPE input from compatible controllers to per-note note expression, and also lets you draw note expression directly in the Key Editor. This tutorial walks through two practical examples of using note expression in HALion.

## Note Expression Types

HALion provides the following note expression types:

|Note Expression Type|Description|
|:-|:-|
|``NoteExpressionType.volume``|Per-note volume.|
|``NoteExpressionType.pan``|Per-note panning.|
|``NoteExpressionType.tuning``|Per-note pitch offset (±120 semitones).|
|``NoteExpressionType.custom1``–``custom8``|User-defined, routed via the modulation matrix.|

All note expression values range from 0 to 1. For bipolar types (pan and tuning), 0.5 is the center, meaning no change. For example, a tuning value of 0.5 means no pitch offset, 0 means the maximum pitch down (−120 semitones), and 1 means the maximum pitch up (+120 semitones).

## Receiving Note Expression

Note expression events are received by the ``onNoteExpression`` callback:

```lua
function onNoteExpression(event)
    print(event.noteExpressionType, event.value, event.id)
end
```

The event fields are:

|Field|Description|
|:-|:-|
|``event.noteExpressionType``|The type of the note expression event.|
|``event.value``|The current value (0–1).|
|``event.id``|The note ID of the note the event belongs to.|

## Note IDs

When a note-on event is forwarded with ``postEvent``, the function returns a **note ID** that uniquely identifies the voice in the HALion engine:

```lua
function onNote(event)
    local id = postEvent(event)
    -- id can now be used to modify this specific voice
end
```

This note ID is the connecting element between [onNote](../../HALion-Script/pages/onNote.md) and [onNoteExpression](../../HALion-Script/pages/onNoteExpression.md): the ``event.id`` field in [onNoteExpression](../../HALion-Script/pages/onNoteExpression.md) matches the ID returned by [postEvent](../../HALion-Script/pages/postEvent.md) for the same note. Knowing the note ID lets you target a specific voice with functions like [changeTune](../../HALion-Script/pages/changeTune.md), [changeVolume](../../HALion-Script/pages/changeVolume.md), [changePan](../../HALion-Script/pages/changePan.md), and [changeNoteExpression](../../HALion-Script/pages/changeNoteExpression.md). This is the basis for the examples in this tutorial.

## Example Programs

* [Using Note Expression 01.vstpreset](../vstpresets/Using%20Note%20Expression%2001.vstpreset)
* [Using Note Expression 02.vstpreset](../vstpresets/Using%20Note%20Expression%2002.vstpreset)

## Prerequisites

* You have a program with a Lua Script module and a zone.

## Example 1: Concert Pitch

One common use case for note expression (NE) is per-note tuning. Cubase can send tuning NE events to HALion that pitch individual notes up or down while they play — either drawn directly in the Key Editor or converted from an MPE controller. The following example shows how to intercept these events and combine them with an offset.

The scenario is a concert pitch parameter: the script offsets every note so that A3 is tuned to a user-defined frequency instead of the standard 440 Hz. The script must combine this offset with any incoming tuning NE events.

### How the Script Works

```lua
notesByPitch = {}  -- [note pitch] = list of voice IDs
defineSlotLocal("notesByPitch")
voiceTuning  = {}  -- [voice ID]   = NE tuning value (0–1), or -1 if not set
defineSlotLocal("voiceTuning")

function concertPitchOffset()
    return math.log(ConcertPitch / 440) / math.log(2) * 12
end

function applyTuning(id, neTuning)
    local tune = concertPitchOffset()
    if neTuning >= 0 then
        tune = tune + (neTuning - 0.5) * 240
    end
    changeTune(id, tune, false, true)
end

function onNote(event)
    local id = postEvent(event)
    local neTuning = getNoteExpression(id, NoteExpressionType.tuning)
    if not notesByPitch[event.note] then
        notesByPitch[event.note] = {}
    end
    table.insert(notesByPitch[event.note], id)
    voiceTuning[id] = neTuning
    applyTuning(id, neTuning)
end

function onRelease(event)
    postEvent(event)
    local ids = notesByPitch[event.note]
    if ids then
        for _, id in ipairs(ids) do
            voiceTuning[id] = nil
        end
        notesByPitch[event.note] = nil
    end
end

function onNoteExpression(event)
    if event.noteExpressionType == NoteExpressionType.tuning and voiceTuning[event.id] ~= nil then
        voiceTuning[event.id] = event.value
        applyTuning(event.id, event.value)
    end
end

function updateAllVoicesTuning()
    for id, neTuning in pairs(voiceTuning) do
        applyTuning(id, neTuning)
    end
end

function onConcertPitchChanged()
    runSync(updateAllVoicesTuning, 1)
end

defineParameter("ConcertPitch", "Concert Pitch", 440, 415, 466, 0.1, onConcertPitchChanged)
```

#### Slot Local Variables

Both ``notesByPitch`` and ``voiceTuning`` store per-note information that depends on the MIDI events received by a slot. If the same program is loaded in more than one slot, each slot must have its own independent copy of these variables. The [defineSlotLocal](../../HALion-Script/pages/defineSlotLocal.md) function achieves this by making a global variable operate independently per slot. See [Using Slot Local Variables](../../HALion-Script/pages/Using-Slot-Local-Variables.md) for more details.

#### concertPitchOffset

The ``ConcertPitch`` parameter sets the frequency of A in Hz. The ``concertPitchOffset`` function converts this to a semitone offset by calculating how far the chosen frequency is from 440 Hz on a logarithmic scale. At 440 Hz the result is 0.

#### applyTuning

``changeTune(noteID, tune, relative, fade)`` sets the tuning for a specific voice. The ``noteID`` argument targets the voice, ``tune`` is the total offset from the note's base pitch in semitones, ``relative = false`` means the value is absolute, and ``fade = false`` means the change is applied immediately.

When a tuning NE value has been set, the NE contribution is added to the concert pitch offset:

```lua
tune = tune + (neTuning - 0.5) * 240
```

The NE tuning value is in the range 0–1 with 0.5 as the center. Subtracting 0.5 and multiplying by 240 converts it to the range −120 to +120 semitones, matching HALion's full tuning NE range. The ``if neTuning >= 0`` guard ensures this is only applied when a value has actually been set — if ``getNoteExpression`` returned −1, only the concert pitch offset is used.

#### onNote

``postEvent`` forwards the incoming note event to HALion and returns the voice ID. This is the ID that all subsequent operations on this voice use.

``getNoteExpression(id, NoteExpressionType.tuning)`` reads the current tuning NE value for the voice. The NE value may already be set at the moment a note is triggered — for example, when note expression is drawn in the Cubase Key Editor starting at the note's onset. If no tuning NE is set, the function returns −1. This sentinel value is stored as-is in ``voiceTuning``; ``applyTuning`` handles it with the ``>= 0`` guard.

Two tables are maintained for the lifetime of each note:

* ``notesByPitch`` maps each note pitch to a list of voice IDs. This is needed in ``onRelease`` to find all voice IDs from the note number, because release events carry a note number but not a voice ID. Multiple entries per pitch handle the case where the same note is retriggered while still held — for example, when the sustain pedal is pressed and the same key is played twice.
* ``voiceTuning`` maps each voice ID to its current NE tuning value. This is needed in ``onNoteExpression`` to update the value for a specific voice, and in ``onConcertPitchChanged`` to iterate over all currently playing voices.

#### onRelease

The release event is forwarded with ``postEvent``. All voice IDs for the released pitch are then removed from ``voiceTuning`` and the entry in ``notesByPitch`` is cleared. Flushing all voices for the pitch at once is correct because a MIDI note-off is pitch-based: it releases all sounding instances of that pitch, not just one.

#### onNoteExpression

When a tuning NE event arrives, the script updates the stored NE value and calls ``applyTuning`` so that the concert pitch offset and the NE pitch are recalculated and combined on every event.

#### onConcertPitchChanged

When the ``ConcertPitch`` parameter changes while notes are held, all playing notes need to be retuned immediately. ``onConcertPitchChanged`` calls ``updateAllVoicesTuning`` via ``runSync``, which iterates over ``voiceTuning`` and calls ``applyTuning`` for each voice, using the NE tuning values accumulated during playback so that the controller position is preserved in the result.

``runSync`` is required here because parameter callbacks run on the UI thread and ``changeTune`` must be called from the audio thread.

## Example 2: Custom Dynamics from Velocity and Mod Wheel

A MIDI velocity value is fixed at the moment a note is played and cannot change while the note is held. If you want dynamics to evolve during a note — for example, to make the sound swell with the mod wheel — you need a different approach. This example uses ``custom1`` note expression to drive the dynamics of a note. The value of ``custom1`` is calculated from a blend of the note-on velocity and the mod wheel, controlled by a ``VelMWBalance`` parameter. At 0, dynamics are determined entirely by velocity. At 100, they are determined entirely by the mod wheel. In between, both contribute proportionally.

The ``custom1`` note expression type has no built-in effect. In [Using Note Expression 02.vstpreset](../vstpresets/Using%20Note%20Expression%2002.vstpreset), ``custom1`` is routed to the **Individual Velocity Mode** of the **Trigger** section of the **Legato Strings** layer, so that both MIDI velocity and mod wheel contribute to the velocity crossfades of the example program (see [Using Velocity Crossfades](./Using-Velocity-Crossfades.md)). Alternatively, you could route it to a destination in the modulation matrix of your zones — for example to **Volume 1** or **Volume 2** — for it to control the volume.

### Blocking Note Expression

When a script sets a note expression value internally, external note expression events of the same type must not interfere. [getNoteExpressionProperties](../../HALion-Script/pages/getNoteExpressionProperties.md) returns a table of properties for all note expression types. Setting ``block = true`` for a type prevents HALion from automatically applying incoming events of that type to the voice. The script then has exclusive control over the value:

```lua
local neProps = getNoteExpressionProperties()
neProps[NoteExpressionType.custom1] = { block = true }
```

### Forwarding Note Expression

When a note is played with [playNote](../../HALion-Script/pages/playNote.md), a new voice with its own ID is created and the original note event is not forwarded to HALion. Note expression events from Cubase are associated with the original event ID and will never reach the internally-played voice automatically. To make note expression work for these voices, the script must forward it explicitly using [changeNoteExpression](../../HALion-Script/pages/changeNoteExpression.md).

Two situations require forwarding:

* **At note-on**: The NE values may already be set at the moment the note is triggered. [getNoteExpression](../../HALion-Script/pages/getNoteExpression.md) reads the current value from the original event and [changeNoteExpression](../../HALion-Script/pages/changeNoteExpression.md) copies it to the internal voice.
* **During the note**: New NE events arrive in [onNoteExpression](../../HALion-Script/pages/onNoteExpression.md) with the original event ID. The script looks up the corresponding internal voice ID and forwards the event.

### How the Script Works

```lua
modWheel = 0
defineSlotLocal("modWheel")
noteIDs  = {}  -- [event ID] = { voiceID, velocity, note }
defineSlotLocal("noteIDs")

neProps = getNoteExpressionProperties()
neProps[NoteExpressionType.custom1] = { block = true }

function calcDynamics(velocity)
    local velFactor = (velocity / 127) * (1 - VelMWBalance / 100)
    local mwFactor  = (modWheel / 127) * (VelMWBalance / 100)
    return velFactor + mwFactor
end

function forwardNE(fromID, toID, neType)
    local value = getNoteExpression(fromID, neType)
    if value >= 0 then
        changeNoteExpression(toID, neType, value, false, true)
    end
end

function onNote(event)
    local id = playNote(event.note, event.velocity, -1)
    changeNoteExpression(id, NoteExpressionType.custom1, calcDynamics(event.velocity), false, true)
    forwardNE(event.id, id, NoteExpressionType.volume)
    forwardNE(event.id, id, NoteExpressionType.pan)
    forwardNE(event.id, id, NoteExpressionType.tuning)
    noteIDs[event.id] = { voiceID = id, velocity = event.velocity, note = event.note }
end

function onRelease(event)
    for origID, data in pairs(noteIDs) do
        if data.note == event.note then
            releaseVoice(data.voiceID)
            noteIDs[origID] = nil
        end
    end
end

function onController(event)
    if event.controller == 1 then
        modWheel = event.value
        for _, data in pairs(noteIDs) do
            changeNoteExpression(data.voiceID, NoteExpressionType.custom1, calcDynamics(data.velocity), false, true)
        end
    end
    postEvent(event)
end

function onNoteExpression(event)
    local data = noteIDs[event.id]
    if data and event.noteExpressionType ~= NoteExpressionType.custom1 then
        changeNoteExpression(data.voiceID, event.noteExpressionType, event.value, false, true)
    end
end

function updateAllVoices()
    for _, data in pairs(noteIDs) do
        changeNoteExpression(data.voiceID, NoteExpressionType.custom1, calcDynamics(data.velocity), false, true)
    end
end

function onVelMWBalanceChanged()
    runSync(updateAllVoices, 1)
end

defineParameter("VelMWBalance", "Vel/MW Balance", 50, 0, 100, 1, onVelMWBalanceChanged)
```

#### Slot Local Variables

``modWheel`` holds the current mod wheel value, while ``noteIDs`` holds the per-note event state. Both depend on the MIDI events received by a slot. If the same program is loaded in more than one slot, each slot must have its own independent copy of these variables — otherwise a note played in one slot would overwrite the state of another. [defineSlotLocal](../../HALion-Script/pages/defineSlotLocal.md) achieves this by making a global variable operate independently per slot. See [Using Slot Local Variables](../../HALion-Script/pages/Using-Slot-Local-Variables.md) for more details.

#### VelMWBalance and calcDynamics

``VelMWBalance`` controls the contribution of each source. ``calcDynamics`` converts velocity and mod wheel to a value in the range 0–1 using a weighted sum:

```lua
local velFactor = (velocity / 127) * (1 - VelMWBalance / 100)
local mwFactor  = (modWheel / 127) * (VelMWBalance / 100)
return velFactor + mwFactor
```

At ``VelMWBalance = 0`` the result equals ``velocity / 127``. At 100 it equals ``modWheel / 127``. At 50, velocity and mod wheel each contribute equally. Because each note stores its own velocity, notes played at different velocities respond individually when the mod wheel moves.

#### onNote

``playNote(event.note, event.velocity, -1)`` creates an internal voice and returns its voice ID. The duration argument ``−1`` means the note plays until it is explicitly released. Because ``playNote`` is used instead of ``postEvent``, the original note event is not forwarded — the script becomes the sole owner of this voice.

``changeNoteExpression(id, NoteExpressionType.custom1, value, false, true)`` sets the initial ``custom1`` value on the new voice. The arguments ``false, true`` mean absolute value and immediate application.

``forwardNE`` then copies the current values of volume, pan, and tuning NE from the original event to the internal voice. These values may already be set when the note starts, so forwarding them at note-on ensures the voice begins in the correct state.

The event data — voice ID, velocity, and note pitch — is stored in ``noteIDs`` keyed by the original event ID. The event ID is what ``onNoteExpression`` receives in ``event.id``, making it the natural key for later lookups.

#### onRelease

Because the note was created with ``playNote`` rather than ``postEvent``, there is no automatic note-off. ``releaseVoice(id)`` explicitly stops each internally-played voice. All entries in ``noteIDs`` with a matching note pitch are released and removed, because a MIDI note-off is pitch-based and releases all sounding instances of that pitch at once.

#### onController

When the mod wheel moves (CC#1), ``calcDynamics`` is called for each playing note and the result is applied via ``changeNoteExpression``. Because each note's velocity is stored individually in ``noteIDs``, notes played at different velocities respond correctly to the same mod wheel movement. The controller event is then passed through with ``postEvent`` so that other components can respond to it.

>&#10069; ``modWheel`` is initialized to 0 and updated as CC#1 events arrive. If the mod wheel is not at the bottom position when the preset loads, the initial dynamics will be calculated using 0 until the first CC#1 event is received.

#### onNoteExpression

NE events from Cubase arrive with the original event ID (``event.id``). The script looks up the corresponding internal voice in ``noteIDs`` and forwards the event using ``changeNoteExpression``. The ``custom1`` type is excluded from forwarding because the script manages it internally — forwarding it would override the dynamics calculation.

The ``custom1`` exclusion here and the ``block = true`` flag set earlier serve different purposes. The ``block`` flag operates at the engine level: it prevents HALion from automatically applying incoming ``custom1`` NE events to any voice. The ``~= NoteExpressionType.custom1`` check operates at the script level: it prevents the script's own forwarding logic from passing those events to the internal voice. Both guards are needed.

#### onVelMWBalanceChanged

When the ``VelMWBalance`` parameter changes while notes are held, the dynamics value for all playing notes is recalculated and applied immediately. ``onVelMWBalanceChanged`` calls ``updateAllVoices`` via ``runSync``, which iterates over ``noteIDs`` and applies the recalculated value to each voice. As in Example 1, ``runSync`` is required because the parameter callback runs on the UI thread.
