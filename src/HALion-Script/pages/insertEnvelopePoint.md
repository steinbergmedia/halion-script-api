/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# insertEnvelopePoint

>**insertEnvelopePoint(envelopeArray, index, level, duration, curve)**

#### Description

Function to insert an envelope point in the specified envelope. You specify the envelope by calling [getParameter](./getParameter.md) with the EnvelopePoints parameter of the desired envelope as argument. If you call [getParameter](./getParameter.md) with the EnvelopePoints parameter as argument, an array with the current envelope points will be returned. Each index of the array represents an envelope point with the fields ``.level``, ``.duration`` and ``.curve``. The insertEnvelopePoint function modifies this array. To apply the changes, you must use [setParameter](./setParameter.md) with the EnvelopePoints parameter of the envelope as argument and the array as value.

**Available in:** Controller, Processor.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**envelopeArray**|An array with envelope points. Each index of the array represents an envelope point with the fields ``.level``, ``.duration`` and ``.curve``. To obtain the envelope array of an envelope, use [getParameter](./getParameter.md) with the EnvelopePoints parameter of the desired envelope as argument.|table|
|**index**|The index of the point where the new point will be inserted. The new point will be inserted before this point.|number|
|**level**|The level of the new point in the range from 0 to 1  for the filter and amplitude envelope or -1 to 1 for the pitch and user envelope.|number|
|**duration**|The duration of the new point in the range from 0 to 30 seconds. The duration of the first point is always 0 seconds.|number|
|**curve**|The curve of the new point in the range from -1 to 1.|number|

#### Example

{{#include ./_insertRemoveEnvelopePoint-Example.md}}

**See also:** [removeEnvelopePoint](./removeEnvelopePoint.md)