/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# setZoneFMXAlgo

>**setZoneFMXAlgo(zone, algo)**

## Description

Function to set the algorithm of the FM zone. The ``zone`` argument sets the target FM zone by its [Zone](./Zone.md) object. You can use [getZone](./getZone.md) or [findZones](./findZones.md) to determine the [Zone](./Zone.md) object of the target FM zone. The ``algo`` argument is the index that corresponds to the desired FM-X algorithm preset of the FM zone.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**zone**|The [Zone](./Zone.md) object of the FM zone.|[Zone](./Zone.md)|
|**algo**|The index that corresponds to the desired FM-X algorithm preset of the FM zone. The index ranges from 1 to 88.|number|

## Example

```lua
algorithms = {}

for i = 1, 88 do
	algorithms[i] = ("Algorithm "..i)
end

function onSelectAlgorithmChanged()
	local zone = this.parent:getZone()
	setZoneFMXAlgo(zone, SelectAlgorithm)
end

defineParameter("SelectAlgorithm", nil, 1, algorithms, onSelectAlgorithmChanged)
```
