minetest.register_node("tlib_jungle:mud_with_jungle_grass", {
	description = ("Mud with Jungle Grass"),
	tiles = {"tlib_jungle_grass_top.png", "terralibmt_mud.png",
		{name = "terralibmt_mud.png^tlib_jungle_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	drop = "terralibmt:mud",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})
