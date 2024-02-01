/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Class Reference](./Class-Reference.md) /

# Event

The Event class describes the properties of events.

---

**On this page:**

[Event Class](#event-class), [Event Constructor](#event-constructor)

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
|**.data**|An array with the bytes of a system exclusive message. For the interpretation of these values, please consult the documentation of the MIDI data format of the device sending the system exclusive message. {{#include ../../_Version.md:halion700}}|table|
|**.dataType**|Currently, there is only one data type (0 = sysex). {{#include ../../_Version.md:halion700}}|number|
|**.dataSize**|The number of bytes in the system exclusive message. {{#include ../../_Version.md:halion700}}|number|
|**.ppqPosition**|The position of the event in ppq relative to the project start. The host must be in playback, otherwise, this value will be 0.0.|number|

#### Fields per Event Type

Which of the fields are used depends on the [Event Type](./Event-Types.md).

|Field|noteOn|noteOff|controller|noteExpression|noteRetrigger|data|
|:-|:-:|:-:|:-:|:-:|:-:|:-:|
|**.type**|&#9989;|&#9989;|&#9989;|&#9989;|&#9989;|&#9989;|
|**.id**|&#9989;|&#9989;|-|&#9989;|&#9989;|-|
|**.note**|&#9989;|&#9989;|-|-|&#9989;|-|
|**.velocity**|&#9989;|&#9989;|-|-|&#9989;|-|
|**.controller**|-|-|&#9989;|-|-|-|
|**.value**|-|-|&#9989;|&#9989;|-|-|
|**.bend**|-|-|&#9989;|-|-|-|
|**.noteExpressionType**|-|-|-|&#9989;|-|-|
|**.data**|-|-|-|-|-|&#9989;|
|**.dataType**|-|-|-|-|-|&#9989;|
|**.dataSize**|-|-|-|-|-|&#9989;|
|**.ppqPosition**|&#9989;|&#9989;|&#9989;|&#9989;|&#9989;|&#9989;|

#### Example

```lua
-- Print the fields of an Event object.

function onNote(event)
    print(event)
    postEvent(event)
end
 
function onRelease(event)
    print(event)
    postEvent(event)
end
  
function onController(event)
    print(event)
    postEvent(event)
end
  
function onNoteExpression(event)
    print(event)
    -- postEvent(event), not needed for note expression.
end
 
function onRetrigger(event)
    print(event)
    postEvent(event)
end
 
function onData(event)
    print(event)
    postEvent(event)
end
```

[Jump to Top ](#event)

## Constructors

### Event Constructor

{{#include ./_Event-Constructor-Reference.md:all}}

[Jump to Top ](#event)
