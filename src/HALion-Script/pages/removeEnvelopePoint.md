/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# removeEnvelopePoint

>**removeEnvelopePoint(envelopeArray, index)**

#### Description

Function to remove an envelope point from the specified envelope. You specify the envelope by calling [getParameter](./getParameter.md) with the EnvelopePoints parameter of the desired envelope as argument. If you call [getParameter](./getParameter.md) with the EnvelopePoints parameter as argument, an array with the current envelope points will be returned. Each index of the array represents an envelope point with the fields ``.level``, ``.duration`` and ``.curve``. The removeEnvelopePoint function modifies this array. To apply the changes, you must use [setParameter](./setParameter.md) with the EnvelopePoints parameter of the envelope as argument and the array as value.

**Available in:** Controller, Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**envelopeArray**|An array with envelope points. Each index of the array represents an envelope point with the fields ``.level``, ``.duration`` and ``.curve``. To obtain the envelope array of an envelope, use [getParameter](./getParameter.md) with the EnvelopePoints parameter of the desired envelope as argument.|table|
|**index**|The index of the point to be removed.|number|

#### Example

{{#include ./_insertRemoveEnvelopePoint-Example.md}}

**See also:** [insertEnvelopePoint](./insertEnvelopePoint.md)