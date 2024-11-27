/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Tutorials & Guidelines](./HALion-Tutorials-Guidelines.md) / [How-tos](./How-tos.md) /

# Snapshot Effects

---

**On this page:**

[[_TOC_]]

---

It can be useful to keep the properties and values of the effects on a bus in a table, for example, if you want to manage effects via script. The following script takes a snapshot of each effect and prints out a properly formatted Lua table of the effects' properties and values. Depending on the **WithKeys** parameter, the script will either print out a table with the name of the effect as the key for the table entries, or it will print out the table entries as an indexed array. If you want to use the printed table, copy and paste it into your script that manages the effects.

1. Load a **Lua Script** MIDI module into the branch of the **Program Tree** which contains the bus and effects you want to print out as a table.
1. Load [SnapshotEffects.lua](../scripts/SnapshotEffects.lua) with the **Lua Script** MIDI module.
1. Go to the **Parameter List**. Set the **WithKeys** parameter to On, if you want to print out a table with the name of the effect as the key for the table entries. Set the **WithKeys** parameter to Off, if you want to print out the table entries as an indexed array.
1. Change the **Snapshot** parameter to print the table to the **Output** of the **Lua Script** MIDI module.
1. To use the printed table, copy and paste it from the **Output** into your script that manages the effects.

>&#10069; For an example of using a table like this to manage effects with a script, see [Creating an FX Chain](./Creating-an-FX-Chain.md) or [Creating an FX Rack](./Creating-an-FX-Rack.md).

## Example

```lua
effects = {}

-- You can exclude parameters by adding them to this table.
excludedParameters = {"Enable", "Bypass", "Mix", "resetMaxGainRed"}

function excludeParameters(def)
	local exclude = false
	local name = string.lower(def.name)
	for i, parameter in ipairs(excludedParameters) do
		local name2 = string.lower(parameter)
		if name == name2  then
			exclude = true
			break
		end
	end
	return exclude
end

function onSnapshot()
	local bus = assert(this.parent:getBus(), "No bus found in the layer '"..this.parent.name.."'.")
	local foundFx = bus:findEffects()
	assert(foundFx[1], "No effects found on the bus '"..bus.name.."'.")
	effects = {}
	for i, fx in ipairs(foundFx) do
		local defs= fx.parameterDefinitions
		effects[i] = {}
		effects[i].name = fx.name
		effects[i].fxType = fx.moduleType
		effects[i].settings = {}
		for _, def in ipairs(defs) do
			local excluded = excludeParameters(def)
			if not excluded then
				if def.automatable and def.persistent and not def.readOnly then
					effects[i].settings[def.name] = fx:getParameterNormalized(def.name)
				end
			end
		end
	end
	printSnapshot()
	Snapshot = false
end

defineParameter("WithKeys", nil, true)

function printSnapshot()
	print("effects = {")
	for i, effect in ipairs(effects) do
		if WithKeys then
			-- Use the FX name without spaces as key for the table entries.
			local effectKey = string.gsub(effect.name, " ", "")
			printRaw(string.format("\t%s = {\n\t    name = %q,\n\t    fxType = %q,\n\t    settings = {", effectKey, effect.name, effect.fxType))
			for key, value in pairs(effect.settings) do
				key = string.gsub(key, "-", "_")
				printRaw(string.format("\n\t      %s = %s,", key, value))
			end
			print("\n\t  },\n\t},")
		else
			-- Print the table as an indexed array.
			printRaw(string.format("\t{ name = %q,\n\t  fxType = %q,\n\t  settings = {\n", effect.name, effect.fxType))
			for key, value in pairs(effect.settings) do
				key = string.gsub(key, "-", "_")
				printRaw(string.format("\t    %s = %s,\n", key, value))
			end
			print("\t  },\n\t},")
		end
	end
	print("}")
end

defineParameter("Snapshot", nil, false, function() if Snapshot then onSnapshot() end end)
```