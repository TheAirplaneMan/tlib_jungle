minetest.register_node("tlib_jungle:wicker", {
	description = ("Wicker Block"),
	drawtype = "glasslike",
	tiles = {"tlib_jungle_wicker.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {snappy = 3, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("tlib_jungle:wicker_light", {
	description = ("Wicker Light"),
	drawtype = "glasslike",
	tiles = {"tlib_jungle_wicker_light.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {snappy = 3, oddly_breakable_by_hand = 2},
	sounds = default.node_sound_leaves_defaults(),
	light_source = 12,
})

minetest.register_craft({
	output = "tlib_jungle:wicker",
	recipe = {
		{"default:papyrus", "default:papyrus", "default:papyrus"},
		{"default:papyrus", "default:papyrus", "default:papyrus"},
		{"default:papyrus", "default:papyrus", "default:papyrus"},
	}
})

minetest.register_craft({
	output = "tlib_jungle:wicker_light",
	recipe = {
		{"default:papyrus", "default:torch", "default:papyrus"},
		{"tlib_jungle:wicker", "default:torch", "tlib_jungle:wicker"},
		{"default:papyrus", "default:torch", "default:papyrus"},
	}
})