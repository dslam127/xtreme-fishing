-- modified code (source: https://mods.factorio.com/mod/adamo-pipes data.lua) 
data:extend({
  {
		type = "item-subgroup",
		name = "pipe",
		group = "logistics",
		order = "d-a-1"
  }
})

data.raw["pipe-to-ground"]["pipe-to-ground"]
.fast_replaceable_group = "pipe"

data.raw.item["pipe"].subgroup = "pipe"
data.raw.item["pipe-to-ground"].subgroup = "pipe"

data.raw.item["pipe"].order = "a[pipe]-a[pipe]-1-2"
data.raw.item["pipe-to-ground"].order = "a[pipe]-b[pipe-to-ground]-1-2"

adamo = {}

function adamo.pipepictures(pipe_type)
	return
	{
		straight_vertical_single = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-straight-vertical-single.png",
			priority = "extra-high",
			width = 80,
			height = 80,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-straight-vertical-single.png",
				priority = "extra-high",
				width = 160,
				height = 160,
				scale = 0.5
			}
		},
		straight_vertical =	{
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-straight-vertical.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-straight-vertical.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		straight_vertical_window = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-straight-vertical-window.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-straight-vertical-window.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		straight_horizontal_window = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-straight-horizontal-window.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-straight-horizontal-window.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		straight_horizontal = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-straight-horizontal.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-straight-horizontal.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		corner_up_right = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-corner-up-right.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-corner-up-right.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		corner_up_left = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-corner-up-left.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-corner-up-left.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		corner_down_right = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-corner-down-right.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-corner-down-right.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		corner_down_left = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-corner-down-left.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-corner-down-left.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		t_up = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-t-up.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-t-up.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		t_down = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-t-down.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-t-down.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		t_right = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-t-right.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-t-right.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		t_left = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-t-left.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-t-left.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		cross = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-cross.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-cross.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		ending_up = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-ending-up.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-ending-up.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		ending_down = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-ending-down.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-ending-down.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		ending_right = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-ending-right.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-ending-right.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		ending_left = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-ending-left.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-ending-left.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		horizontal_window_background = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-horizontal-window-background.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-horizontal-window-background.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		vertical_window_background = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-vertical-window-background.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-vertical-window-background.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		fluid_background = {
			filename = "__base__/graphics/entity/pipe/fluid-background.png",
			priority = "extra-high",
			width = 32,
			height = 20,
			hr_version = {
				filename = "__base__/graphics/entity/pipe/hr-fluid-background.png",
				priority = "extra-high",
				width = 64,
				height = 40,
				scale = 0.5
			}
		},
		low_temperature_flow = {
			filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
			priority = "extra-high",
			width = 160,
			height = 18
		},
		middle_temperature_flow = {
			filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
			priority = "extra-high",
			width = 160,
			height = 18
		},
		high_temperature_flow = {
			filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
			priority = "extra-high",
			width = 160,
			height = 18
		},
		gas_flow = {
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			hr_version = {
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				direction_count = 1
			}
		}
	}
end

function adamo.pipetogroundpictures(pipe_type)
	return
	{
		up = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-to-ground-up.png",
			priority = "high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-to-ground-up.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		down = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-to-ground-down.png",
			priority = "high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-to-ground-down.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		left = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-to-ground-left.png",
			priority = "high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-to-ground-left.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		right = {
			filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-to-ground-right.png",
			priority = "high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-to-ground-right.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
	}
end

function adamo.pipecoverspictures(pipe_type)
	return
	{
		north = {
			layers = {
				{
					filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-cover-north.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					hr_version = {
						filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-cover-north.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					draw_as_shadow = true,
					hr_version = {
						filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5,
						draw_as_shadow = true
					}
				},
			},
		},
		east = {
			layers = {
				{
					filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-cover-east.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					hr_version = {
						filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-cover-east.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					draw_as_shadow = true,
					hr_version = {
						filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5,
						draw_as_shadow = true
					}
				},
			},
		},
		south = {
			layers = {
				{
					filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-cover-south.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					hr_version = {
						filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-cover-south.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					draw_as_shadow = true,
					hr_version = {
						filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5,
						draw_as_shadow = true
					}
				},
			},
		},
		west = {
			layers = {
				{
					filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/pipe-cover-west.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					hr_version = {
						filename = "__xtreme-fishing__/graphics/entity/pipe/"..pipe_type.."/hr-pipe-cover-west.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					draw_as_shadow = true,
					hr_version = {
						filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5,
						draw_as_shadow = true
					}
				},
			},
		}
	}
end


-- To update vanilla pipe graphics.
data.raw["pipe"]["pipe"].pictures = adamo.pipepictures("iron")

data.raw["pipe-to-ground"]["pipe-to-ground"]["fluid_box"].pipe_covers = adamo.pipecoverspictures("iron")

data.raw["pipe-to-ground"]["pipe-to-ground"].pictures = adamo.pipetogroundpictures("iron")

data:extend(
{
  {
		type = "recipe",
		name = "concrete-pipe",
		enabled = "false",
		ingredients = {
			{"concrete", 1},
		},
		result = "concrete-pipe",
	},
	{
		type = "recipe",
		name = "concrete-pipe-to-ground",
		enabled = "false",
		ingredients = {
			{"concrete-pipe", 10},
			{"concrete", 5},
		},
		result_count = 2,
		result = "concrete-pipe-to-ground",
	},
	{
		type = "recipe",
		name = "stone-pipe",
		enabled = "true",
		ingredients = {
			{"stone-brick", 1},
		},
		result = "stone-pipe",
	},
	{
		type = "recipe",
		name = "stone-pipe-to-ground",
		enabled = "true",
		ingredients = {
			{"stone-pipe", 10},
			{"stone-brick", 5},
		},
		result_count = 2,
		result = "stone-pipe-to-ground",
	},
	{
		type = "recipe",
		name = "copper-pipe",
    enabled = "true",
		ingredients = {
			{"copper-plate", 1},
		},
		result = "copper-pipe",
	},
	{
		type = "recipe",
		name = "copper-pipe-to-ground",
    enabled = "true",
		ingredients = {
			{"copper-pipe", 10},
			{"copper-plate", 5},
		},
		result_count = 2,
		result = "copper-pipe-to-ground",
	},
	{
		type = "recipe",
		name = "plastic-pipe",
		enabled = "false",
		ingredients = {
			{"plastic-bar", 1},
		},
		result = "plastic-pipe",
	},
	{
		type = "recipe",
		name = "plastic-pipe-to-ground",
		enabled = "false",
		ingredients = {
			{"plastic-pipe", 10},
			{"plastic-bar", 5},
		},
		result_count = 2,
		result = "plastic-pipe-to-ground",
	},
  {
		type = "item",
		name = "concrete-pipe",
		icon = "__xtreme-fishing__/graphics/icons/pipe/concrete-pipe.png",
		icon_size = 32,
		subgroup = "pipe",
		order = "a[pipe]-a[pipe]-1-4",
		place_result = "concrete-pipe",
		stack_size = 50,
	},
	{
		type = "item",
		name = "concrete-pipe-to-ground",
		icon = "__xtreme-fishing__/graphics/icons/pipe/concrete-pipe-to-ground.png",
		icon_size = 32,
		subgroup = "pipe",
		order = "a[pipe]-b[pipe-to-ground]-1-4",
		place_result = "concrete-pipe-to-ground",
		stack_size = 50,
	},
	{
		type = "item",
		name = "stone-pipe",
		icon = "__xtreme-fishing__/graphics/icons/pipe/stone-pipe.png",
		icon_size = 32,
		subgroup = "pipe",
		order = "a[pipe]-a[pipe]-1-3",
		place_result = "stone-pipe",
		stack_size = 50,
	},
	{
		type = "item",
		name = "stone-pipe-to-ground",
		icon = "__xtreme-fishing__/graphics/icons/pipe/stone-pipe-to-ground.png",
		icon_size = 32,
		subgroup = "pipe",
		order = "a[pipe]-b[pipe-to-ground]-1-3",
		place_result = "stone-pipe-to-ground",
		stack_size = 50,
	},
	{
		type = "item",
		name = "copper-pipe",
		icon = "__xtreme-fishing__/graphics/icons/pipe/copper-pipe.png",
		icon_size = 32,
		subgroup = "pipe",
		order = "a[pipe]-a[pipe]-1-1",
		place_result = "copper-pipe",
		stack_size = 50,
	},
	{
		type = "item",
		name = "copper-pipe-to-ground",
		icon = "__xtreme-fishing__/graphics/icons/pipe/copper-pipe-to-ground.png",
		icon_size = 32,
		subgroup = "pipe",
		order = "a[pipe]-b[pipe-to-ground]-1-1",
		place_result = "copper-pipe-to-ground",
		stack_size = 50,
	},
	{
		type = "item",
		name = "plastic-pipe",
		icon = "__xtreme-fishing__/graphics/icons/pipe/plastic-pipe.png",
		icon_size = 32,
		subgroup = "pipe",
		order = "a[pipe]-a[pipe]-2-3",
		place_result = "plastic-pipe",
		stack_size = 50,
	},
	{
		type = "item",
		name = "plastic-pipe-to-ground",
		icon = "__xtreme-fishing__/graphics/icons/pipe/plastic-pipe-to-ground.png",
		icon_size = 32,
		subgroup = "pipe",
		order = "a[pipe]-b[pipe-to-ground]-2-3",
		place_result = "plastic-pipe-to-ground",
		stack_size = 50,
	},
  {
		type = "pipe",
		name = "concrete-pipe",
		icon = "__xtreme-fishing__/graphics/icons/pipe/concrete-pipe.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {
			hardness = 0.3,
			mining_time = 0.3,
			result = "concrete-pipe"
		},
		max_health = 200,
		corpse = "small-remnants",
		resistances = {
			{ type = "fire", percent = 100 }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			base_area = 1,
			height = 2,
			pipe_connections = {
				{ position = {0, -1} },
				{ position = {1, 0} },
				{ position = {0, 1} },
				{ position = {-1, 0} }
			},
		},
		pictures = adamo.pipepictures("concrete"),
		working_sound = {
			sound = {
				{ filename = "__base__/sound/pipe.ogg", volume = 0.65 }
			},
			match_volume_to_activity = true,
			max_sounds_per_type = 3
		},
		horizontal_window_bounding_box = {
			{-0.25, -0.25},
			{0.25, 0.15625}
		},
		vertical_window_bounding_box = {
			{-0.28125, -0.40625},
			{0.03125, 0.125}
		},
	},
	{
		type = "pipe-to-ground",
		name = "concrete-pipe-to-ground",
		icon = "__xtreme-fishing__/graphics/icons/pipe/concrete-pipe-to-ground.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {
			hardness = 0.3,
			mining_time = 0.3,
			result = "concrete-pipe-to-ground"
		},
		max_health = 300,
		corpse = "small-remnants",
		resistances = {
			{	type = "fire", percent = 100 }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			base_area = 1,
			height = 2,
			pipe_covers = adamo.pipecoverspictures("concrete"),
			pipe_connections = {
				{ position = {0, -1} },
				{ position = {0, 1}, max_underground_distance = 10 }
			},
		},
		underground_sprite = {
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "extra-high-no-scale",
			width = 64,
			height = 64,
			scale = 0.5
		},
		pictures = adamo.pipetogroundpictures("concrete"),
	},
	{
		type = "pipe",
		name = "stone-pipe",
		icon = "__xtreme-fishing__/graphics/icons/pipe/stone-pipe.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {
			hardness = 0.3,
			mining_time = 0.3,
			result = "stone-pipe"
		},
		max_health = 200,
		corpse = "small-remnants",
		resistances = {
			{ type = "fire", percent = 90 }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			base_area = 1,
			height = 2,
			pipe_connections = {
				{ position = {0, -1} },
				{ position = {1, 0} },
				{ position = {0, 1} },
				{ position = {-1, 0} }
			},
		},
		pictures = adamo.pipepictures("stone"),
		working_sound = {
			sound = {
				{ filename = "__base__/sound/pipe.ogg", volume = 0.65 }
			},
			match_volume_to_activity = true,
			max_sounds_per_type = 3
		},
		horizontal_window_bounding_box = {
			{-0.25, -0.25},
			{0.25, 0.15625}
		},
		vertical_window_bounding_box = {
			{-0.28125, -0.40625},
			{0.03125, 0.125}
		},
	},
	{
		type = "pipe-to-ground",
		name = "stone-pipe-to-ground",
		icon = "__xtreme-fishing__/graphics/icons/pipe/stone-pipe-to-ground.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {
			hardness = 0.3,
			mining_time = 0.3,
			result = "stone-pipe-to-ground"
		},
		max_health = 300,
		corpse = "small-remnants",
		resistances = {
			{	type = "fire", percent = 80 }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			base_area = 1,
			height = 2,
			pipe_covers = adamo.pipecoverspictures("stone"),
			pipe_connections = {
				{ position = {0, -1} },
				{ position = {0, 1}, max_underground_distance = 10 }
			},
		},
		underground_sprite = {
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "extra-high-no-scale",
			width = 64,
			height = 64,
			scale = 0.5
		},
		pictures = adamo.pipetogroundpictures("stone"),
	},
	{
		type = "pipe",
		name = "copper-pipe",
		icon = "__xtreme-fishing__/graphics/icons/pipe/copper-pipe.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {
			hardness = 0.3,
			mining_time = 0.3,
			result = "copper-pipe"
		},
		max_health = 50,
		corpse = "small-remnants",
		resistances = {
			{ type = "fire", percent = 90 }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			base_area = 1,
			pipe_connections = {
				{ position = {0, -1} },
				{ position = {1, 0} },
				{ position = {0, 1} },
				{ position = {-1, 0} }
			},
		},
		pictures = adamo.pipepictures("copper"),
		working_sound = {
			sound = {
				{ filename = "__base__/sound/pipe.ogg", volume = 0.65 }
			},
			match_volume_to_activity = true,
			max_sounds_per_type = 3
		},
		horizontal_window_bounding_box = {
			{-0.25, -0.25},
			{0.25, 0.15625}
		},
		vertical_window_bounding_box = {
			{-0.28125, -0.40625},
			{0.03125, 0.125}
		},
	},
	{
		type = "pipe-to-ground",
		name = "copper-pipe-to-ground",
		icon = "__xtreme-fishing__/graphics/icons/pipe/copper-pipe-to-ground.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {
			hardness = 0.3,
			mining_time = 0.3,
			result = "copper-pipe-to-ground"
		},
		max_health = 75,
		corpse = "small-remnants",
		resistances = {
			{ type = "fire", percent = 80 }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			base_area = 1,
			pipe_covers = adamo.pipecoverspictures("copper"),
			pipe_connections = {
				{ position = {0, -1} },
				{ position = {0, 1}, max_underground_distance = 10 }
			},
		},
		underground_sprite = {
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "extra-high-no-scale",
			width = 64,
			height = 64,
			scale = 0.5
		},
		pictures = adamo.pipetogroundpictures("copper"),
	},
	{
		type = "pipe",
		name = "plastic-pipe",
		icon = "__xtreme-fishing__/graphics/icons/pipe/plastic-pipe.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {
			hardness = 0.1,
			mining_time = 0.1,
			result = "plastic-pipe"
		},
		max_health = 100,
		corpse = "small-remnants",
		resistances = {
			{ type = "fire", percent = 90 }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			base_area = 1,
			pipe_connections = {
				{ position = {0, -1} },
				{ position = {1, 0} },
				{ position = {0, 1} },
				{ position = {-1, 0} }
			},
		},
		pictures = adamo.pipepictures("plastic"),
		working_sound = {
			sound = {
				{	filename = "__base__/sound/pipe.ogg", volume = 0.65 }
			},
			match_volume_to_activity = true,
			max_sounds_per_type = 3
		},
		horizontal_window_bounding_box = {
			{-0.25, -0.25},
			{0.25, 0.15625}
		},
		vertical_window_bounding_box = {
			{-0.28125, -0.40625},
			{0.03125, 0.125}
		},
	},
	{
		type = "pipe-to-ground",
		name = "plastic-pipe-to-ground",
		icon = "__xtreme-fishing__/graphics/icons/pipe/plastic-pipe-to-ground.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {
			hardness = 0.1,
			mining_time = 0.1,
			result = "plastic-pipe-to-ground"
		},
		max_health = 150,
		corpse = "small-remnants",
		resistances = {
			{ type = "fire", percent = 80 }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			base_area = 1,
			pipe_covers = adamo.pipecoverspictures("plastic"),
			pipe_connections = {
				{ position = {0, -1} },
				{ position = {0, 1}, max_underground_distance = 20 }
			},
		},
		underground_sprite = {
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "extra-high-no-scale",
			width = 64,
			height = 64,
			scale = 0.5
		},
		pictures = adamo.pipetogroundpictures("plastic"),
	},
})

function variable_dist(dist)
  local start = settings.startup["xtreme-fishing-ugpipestart"].value
  local distance = settings.startup["xtreme-fishing-ugpipeinterval"].value * (dist - 1)
  return (start + distance)
end

set_pipe_distance = function(pipe, dist)
	if data.raw["pipe-to-ground"][pipe] then
		for _,connection in pairs(data.raw["pipe-to-ground"][pipe].fluid_box.pipe_connections) do
			if connection.max_underground_distance then
				data.raw["pipe-to-ground"][pipe].fluid_box.pipe_connections[_].max_underground_distance = variable_dist(dist)
			end
		end
	end
end

-- iron and copper underground pipes have the same distance
set_pipe_distance("stone-pipe-to-ground", 1)
set_pipe_distance("pipe-to-ground", 1)
set_pipe_distance("copper-pipe-to-ground", 1)
set_pipe_distance("concrete-pipe-to-ground", 2)
set_pipe_distance("plastic-pipe-to-ground", 3)

-- stone pipe upgrade locked behind concrete tech
table.insert(data.raw["technology"]["concrete"].effects, {type = "unlock-recipe", recipe = "concrete-pipe"})
table.insert(data.raw["technology"]["concrete"].effects, {type = "unlock-recipe", recipe = "concrete-pipe-to-ground"})

-- plastic pipe upgrade locked behind plastic tech
table.insert(data.raw["technology"]["plastics"].effects, {type = "unlock-recipe", recipe = "plastic-pipe"})
table.insert(data.raw["technology"]["plastics"].effects, {type = "unlock-recipe", recipe = "plastic-pipe-to-ground"})