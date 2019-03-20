-- lab intermediates
data:extend({
	-- lab vanilla ingredients {{"electronic-circuit", 10}, {"iron-gear-wheel", 10}, {"transport-belt", 4}}, 
	-- lab1 intermediates
	{
		type = "recipe",
		name = "sct-lab1-construction",
		expensive =
		{
			energy_required = 5,
			enabled = false,
			ingredients = 
			{
				{"iron-stick", 10},
				{"iron-plate", 3},
			},
			result = "sct-lab1-construction",
		},
		normal =
		{
			energy_required = 2,
			enabled = false,
			ingredients = 
			{
				{"iron-stick", 4},
				{"iron-plate", 1},
			},
			result = "sct-lab1-construction",
		},
	},

	{
		type = "recipe",
		name = "sct-lab1-mechanization",
		expensive =
		{
			energy_required = 10,
			enabled = false,
			ingredients = 
			{
				{"transport-belt", 30},
				{"electronic-circuit", 20},
			},
			result = "sct-lab1-mechanization",
		},
		normal =
		{
			energy_required = 4,
			enabled = false,
			ingredients = 
			{
				{"transport-belt", 10},
				{"electronic-circuit", 10},
			},
			result = "sct-lab1-mechanization",
		},
	},

	-- lab2 intermediates
	{
		type = "recipe",
		name = "sct-lab2-construction",
		expensive = 
		{
			energy_required = 10,
			enabled = false,
			ingredients = 
			{
				{"iron-gear-wheel", 10},
				{"steel-plate", 5},
			},
			result = "sct-lab2-construction",
		},
		normal = 
		{
			energy_required = 4,
			enabled = false,
			ingredients = 
			{
				{"iron-gear-wheel", 4},
				{"steel-plate", 2},
			},
			result = "sct-lab2-construction",
		},
	},

	{
		type = "recipe",
		name = "sct-lab2-automatization",
		expensive = 
		{
			energy_required = 20,
			enabled = false,
			ingredients = 
			{
				{"long-handed-inserter", 5},
				{"electronic-circuit", 30},
			},
			result = "sct-lab2-automatization",
		},
		normal = 
		{
			energy_required = 8,
			enabled = false,
			ingredients = 
			{
				{"long-handed-inserter", 2},
				{"electronic-circuit", 10},
			},
			result = "sct-lab2-automatization",
		},
	},
	
	-- lab3 intermediates
	{
		type = "recipe",
		name = "sct-lab3-construction",
		expensive = 
		{
			energy_required = 15,
			enabled = false,
			ingredients = 
			{
				{"solar-panel", 10},
				{"steel-plate", 15},
			},
			result = "sct-lab3-construction",
		},
		normal = 
		{
			energy_required = 6,
			enabled = false,
			ingredients = 
			{
				{"solar-panel", 5},
				{"steel-plate", 5},
			},
			result = "sct-lab3-construction",
		},
	},

	{
		type = "recipe",
		name = "sct-lab3-optics",
		expensive =
		{
			energy_required = 30,
			enabled = false,
			ingredients = 
			{
				{"advanced-circuit", 50},
				{"sct-t3-femto-lasers", 2}
			},
			result = "sct-lab3-optics",
		},
		normal =
		{
			energy_required = 12,
			enabled = false,
			ingredients = 
			{
				{"advanced-circuit", 20},
				{"sct-t3-femto-lasers", 1}
			},
			result = "sct-lab3-optics",
		},
	},
	
	-- lab4 intermediates
	{
		type = "recipe",
		name = "sct-lab4-construction",
		expensive = 
		{
			energy_required = 15,
			enabled = false,
			ingredients = 
			{
				{"centrifuge", 2},
				{"steel-plate", 20},
			},
			result = "sct-lab4-construction",
		},
		normal = 
		{
			energy_required = 6,
			enabled = false,
			ingredients = 
			{
				{"centrifuge", 1},
				{"steel-plate", 5},
			},
			result = "sct-lab4-construction",
		},
	},

	{
		type = "recipe",
		name = "sct-lab4-manipulators",
		expensive =
		{
			energy_required = 30,
			enabled = false,
			ingredients = 
			{
				{"sct-htech-injector", 1},
				{"stack-filter-inserter", 5},
				{"processing-unit", 15},
			},
			result = "sct-lab4-manipulators",
		},
		normal =
		{
			energy_required = 12,
			enabled = false,
			ingredients = 
			{
				{"sct-htech-injector", 1},
				{"stack-filter-inserter", 2},
				{"processing-unit", 5},
			},
			result = "sct-lab4-manipulators",
		},
	},
})