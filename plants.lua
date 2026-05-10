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

minetest.register_node("tlib_jungle:fungus_jungle", {
	description = ("Jungle Fungus"),
	light_source = 6,
	tiles = {"tlib_jungle_fungus.png"},
	inventory_image = "tlib_jungle_fungus.png",
	wield_image = "tlib_jungle_fungus.png",
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(-1),
	drop = {
		max_items = 1,
		items = {
			{
				items = {"tlib_jungle:fungus_jungle"},
				rarity = 3,
			},
			{
				items = {"tlib_jungle:jungle_spores 2"},
				rarity = 2,
			},
			{
				items = {"tlib_jungle:jungle_spores"},
			},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	}
})

minetest.register_craftitem("tlib_jungle:jungle_spores", {
	description = ("Jungle Spores"),
	inventory_image = "tlib_jungle_jungle_spores.png",
})

minetest.register_craftitem("tlib_jungle:jungle_thorn", {
	description = ("Jungle Thorn"),
	inventory_image = "tlib_jungle_jungle_thorn.png",
})