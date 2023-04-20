/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) /

# Event

The Event class describes the properties of events.

---

**On this page:**

[[_TOC_]]

---

## Classes

### Event Class

#### Description

The state of an Event object is described by the following fields.

**Available in:** Processor.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of event. See [Event Types](./Event-Types.md) for details.|number|
|**.id**|The ID of the event.|number|
|**.note**|The note number in the range of 0 to 127.|number|
|**.velocity**|The note-on velocity in the range of 0 to 127.|number|
|**.controller**|The controller number. See [Controller Numbers](./Controller-Numbers.md) for a description of the different controllers.|number|
|**.value**|The value of a controller, pitch bend, or note expression event. The value range depends on the event type.|number|
|**.bend**|The value of a pitch bend event in the range of -1.0 to 1.0.|number|
|**.noteExpressionType**|The type of note expression event. See [Note Expression Types](./Note-Expression-Types.md) for details.|number|
|**.ppqPosition**|The position of the event in ppq relative to the song start. The host must be in in playback. This value will be 0.0 if the host is not in playback.|number|

#### Fields per Event Type

Which of the fields are used depends on the [Event Type](./Event-Types.md).

|Field|noteOn|noteOff|controller|noteExpression|
|:-|:-:|:-:|:-:|:-:|
|**.type**|&#9989;|&#9989;|&#9989;|&#9989;|
|**.id**|&#9989;|&#9989;|-|&#9989;|
|**.note**|&#9989;|&#9989;|-|-|
|**.velocity**|&#9989;|&#9989;|-|-|
|**.controller**|-|-|&#9989;|-|
|**.value**|-|-|&#9989;|&#9989;|
|**.bend**|-|-|&#9989;|-|
|**.noteExpressionType**|-|-|-|&#9989;|
|**.ppqPosition**|&#9989;|&#9989;|&#9989;|&#9989;|

#### Example

```lua
-- Print the fields of an Event object.

function printEventMembers(event)
    print("Event Type:", event.type)
    print("ID:", event.id)
    print("Note #:", event.note)
    print("Velocity:", event.velocity)
    print("Controller #:", event.controller)
    print("Value:", event.value)
    print("Pitch Bend:", event.bend)
    print("Note Expression Type:", event.noteExpressionType)
    print("PPQ:", event.ppqPosition, "\n")
end
 
function onNote(event)
    printEventMembers(event)
    postEvent(event)
end
 
function onRelease(event)
    printEventMembers(event)
    postEvent(event)
end
  
function onController(event)
    printEventMembers(event)
    postEvent(event)
end
  
function onNoteExpression(event)
    printEventMembers(event)
    -- postEvent(event), not needed for note expression.
end
```

[Jump to Top ](#event)

## Constructors

### Event Constructor

{{#include ./_Event-Constructor-Description.md}}

[Jump to Top ](#event)
