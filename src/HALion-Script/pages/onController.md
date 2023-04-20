/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onController

>**onController(event)**

#### Description

This callback function is called when the script module receives a continuous controller event. If the script doesn't implement [onAfterTouch](./onAfterTouch.md) or [onPitchBend](./onPitchBend.md), the respective aftertouch or pitch bend events will be passed on to onController. This way, continuous controller, aftertouch and pitch bend events can be treated in the same callback function onController.

**Available in:** Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**event**|[Event](./Event.md) object of the type controller|[Event](./Event.md)|

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of event (3 = controller). See [Event Types](./Event-Types.md) for details.|number|
|**.controller**|The controller number. See [Controller Numbers](./Controller-Numbers.md) for a description of the different controllers.|number|
|**.value**|The controller value in the range of 0 to 127.|number|

#### Example

{{#include _onController-Example.md}}

**See also:** [controlChange](./controlChange.md), [getCC](./getCC.md), [onAfterTouch](./onAfterTouch.md), [onPitchBend](./onPitchBend.md)