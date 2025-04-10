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