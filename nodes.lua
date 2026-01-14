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

minetest.register_node("tlib_jungle:jungle_grass_glowing", {
	description = ("Glowing Jungle Grass"),
	light_source = 6,
	waving = 1,
	tiles = {"tlib_jungle_grass_glowing.png"},
	inventory_image = "tlib_jungle_grass_glowing.png",
	wield_image = "tlib_jungle_grass_glowing.png",
	visual_scale = 1.3,
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	}
})