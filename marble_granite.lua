minetest.register_node("tlib_jungle:marble", {
	description = ("Marble"),
	tiles = {"tlib_jungle_marble.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tlib_jungle:marbletin_brick", {
	description = ("Marbletin Brick"),
	tiles = {"tlib_jungle_marbletin_brick.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tlib_jungle:granite", {
	description = ("Granite"),
	tiles = {"tlib_jungle_granite.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tlib_jungle:granitecopper_brick", {
	description = ("Granitecopper_brick"),
	tiles = {"tlib_jungle_granitecopper_brick.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "tlib_jungle:marble",
	wherein         = {"terralibmt:mud"},
	clust_scarcity  = 32 * 32 * 32,
	clust_size      = 10,
	y_max           = 31000,
	y_min           = -31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 123,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "tlib_jungle:granite",
	wherein         = {"terralibmt:mud"},
	clust_scarcity  = 32 * 32 * 32,
	clust_size      = 10,
	y_max           = 31000,
	y_min           = -31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 321,
		octaves = 1,
		persist = 0.0
	},
})