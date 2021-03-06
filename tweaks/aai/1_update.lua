--
if mods["aai-industry"] then
	local aaitech0 = {
		"basic-automation",
		"basic-logistics",
		"electricity",
		"basic-fluid-handling",
		"steam-power",
		"electric-mining",
		"electric-lab",
	}
	if mods["omnimatter_water"] then
		table.insert(aaitech0, "omniwaste")
	end
	
	for _i, tech in pairs(aaitech0) do
		sctm.tech_pack_replace(tech, "automation-science-pack", "sct-science-pack-0")
	end

--	if data.raw.technology["electric-lab"] then
--		data.raw.technology["electric-lab"].enabled = false
--	end
	
	if data.raw.lab["burner-lab"] then
		sctm.lab_input_add("burner-lab", "sct-science-pack-0")
		data.raw.item["burner-lab"].order = "a[labs]-a[lab0]"
		data.raw.item["burner-lab"].subgroup = "sct-labs"
		data.raw.recipe["burner-lab"].order = "a[labs]-a[lab0]"
		data.raw.recipe["burner-lab"].subgroup = "sct-labs"
		sctm.tech_pack_add("sct-automation-science-pack", {"sct-science-pack-0", 1})
		data.raw.technology["sct-automation-science-pack"].unit.time = 10
		sctm.tech_pack_add("sct-lab-t1", {"sct-science-pack-0", 1})
		data.raw.technology["sct-lab-t1"].unit.time = 20
		sctm.lab_input_add("lab", "sct-science-pack-0")
		data.raw.item["burner-lab"].icon_size = 32
		data.raw.item["burner-lab"].icons = 
		{
			{
				icon = "__aai-industry__/graphics/icons/burner-lab.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/flame.png",
			},
		}
		data.raw.lab["burner-lab"].icon_size = 32
		data.raw.lab["burner-lab"].icons =
		{
			{
				icon = "__aai-industry__/graphics/icons/burner-lab.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/flame.png",
			},
		}			
	end
	sctm.tech_dependency_add("sct-lab-t1", "electricity")

	if not mods["boblogistics"] or not settings.startup["bobmods-logistics-beltoverhaul"] or not settings.startup["bobmods-logistics-beltoverhaul"].value then
		sctm.tech_dependency_add("sct-lab-t1", "basic-logistics")
	end
	
	if data.raw.technology["electric-lab"] then
		data.raw.technology["electric-lab"].enabled = false
	end

	sctm.recipe_ingredient_replace("sct-t0-crate", "stone", "stone-crushed")
	sctm.recipe_ingredient_replace("sct-t0-solvent", "iron-ore", "crushed-omnite")
	sctm.recipe_ingredient_replace("sct-t0-solvent", "iron-ore", "angels-ore1-crushed")
	sctm.recipe_ingredient_replace("sct-t0-solvent", "wood", "omniwood")
end