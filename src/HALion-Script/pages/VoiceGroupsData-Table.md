/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# VoiceGroupsData Table

{{#include ../../_Version.md:halion6410}}

## Description

Voice Groups are managed via a predefined table: the VoiceGroupsData table. This table can be obtained by making a call to [getParameter](./getParameter.md) with ``"VoiceManager.VoiceGroupsData"`` as parameter. The voice groups are referenced by their index. Each voice group has the fields ``.maxPolyphony``, ``.exclusiveGroup`` and ``.stealMode``. You can change the correspondig values, but the structure of this table must remain unaltered. The values are set by making a call to ``setParameter``. See the example below for more details.

**Available in:** Controller.

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.maxPolyphony**|The maximum polyphony of the voice group. The value range is from 1 to 128.|number|
|**.exclusiveGroup**|The exclusive group of the voice group. The value range is from 0 to 32. Set this to 0 to switch the exclusive group off.|number|
|**.stealMode**|The steal mode of the voice group. See [Voice Group Steal Modes](./Voice-Group-Steal-Modes.md) for details.|number|

## Example

{{#include ./_VoiceGroups-Example.md}}

**See also:** [Voice Group Steal Modes](./Voice-Group-Steal-Modes.md)