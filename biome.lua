	-- Jungle

	minetest.register_biome({
		name = "jungle",
		node_top = "tlib_jungle:mud_with_jungle_grass",
		depth_top = 1,
		node_filler = "terralibmt:mud",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_stone = "terralibmt:mud",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = 1,
		heat_point = 70,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "jungle_ocean",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_stone = "terralibmt:mud",
		node_cave_liquid = "default:water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		vertical_blend = 1,
		y_max = 0,
		y_min = -255,
		heat_point = 70,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "jungle_under",
		node_top = "tlib_jungle:mud_with_jungle_grass",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		node_stone = "terralibmt:mud",
		y_max = -256,
		y_min = -31000,
		heat_point = 70,
		humidity_point = 65,
	})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "terralibmt:stone_rough",
	wherein         = {"terralibmt:mud"},
	clust_scarcity  = 12 * 12 * 12,
	clust_size      = 5,
	y_max           = 31000,
	y_min           = -31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 76543,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"terralibmt:mud"},
    is_ground_content = true,
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 8,
    flags = "force_placement, all_floors",
    y_max = 31000,
    y_min = -31000,
    decoration = "tlib_jungle:mud_with_jungle_grass"
})

minetest.register_decoration({
	name = "tlib_jungle:life_fruit_plant",
	deco_type = "simple",

	place_on = {"tlib_jungle:mud_with_jungle_grass"},
	sidelen = 16,

	fill_ratio = 0.00025, -- rarity

	y_max = -256,   -- BELOW ground
	y_min = -31000,

        flags = "all_floors",

	decoration = "terralibmt:life_fruit_plant",
})

minetest.register_decoration({
	name = "tlib_jungle:junglegrass",
	deco_type = "simple",

	place_on = {"tlib_jungle:mud_with_jungle_grass"},
	sidelen = 16,

	fill_ratio = 0.025, -- rarity

	y_max = 31000,   	y_min = -31000,

        flags = "all_floors",

	decoration = "default:junglegrass",
})

minetest.register_decoration({
	name = "tlib_jungle:jungle_grass_glowing",
	deco_type = "simple",

	place_on = {"tlib_jungle:mud_with_jungle_grass"},
	sidelen = 16,

	fill_ratio = 0.010, -- rarity

	y_max = -64,   	y_min = -31000,

        flags = "all_floors",

	decoration = "tlib_jungle:jungle_grass_glowing",
})

minetest.register_decoration({
	name = "tlib_jungle:fungus_jungle",
	deco_type = "simple",

	place_on = {"tlib_jungle:mud_with_jungle_grass"},
	sidelen = 16,

	fill_ratio = 0.008, -- rarity

	y_max = -128,   	y_min = -31000,

        flags = "all_floors",

	decoration = "tlib_jungle:fungus_jungle",
})