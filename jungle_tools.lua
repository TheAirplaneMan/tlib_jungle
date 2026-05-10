minetest.register_tool("tlib_jungle:jungle_tool_pickaxe", {
	description = ("Jungle Pickaxe"),
	inventory_image = "tlib_jungle_jungle_tool_pickaxe.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.8, [2]=0.85, [3]=0.50}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("tlib_jungle:jungle_tool_shovel", {
	description = ("Jungle Shovel"),
	inventory_image = "tlib_jungle_jungle_tool_shovel.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("tlib_jungle:jungle_tool_axe", {
	description = ("Jungle Axe"),
	inventory_image = "tlib_jungle_jungle_tool_axe.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.90, [2]=0.80, [3]=0.40}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("tlib_jungle:jungle_tool_sword", {
	description = ("Jungle Sword"),
	inventory_image = "tlib_jungle_jungle_tool_sword.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.90, [2]=0.50, [3]=0.10}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

	minetest.register_craft({
		output = "tlib_jungle:jungle_tool_pickaxe",
		recipe = {
			{"tlib_jungle:jungle_ingot", "tlib_jungle:jungle_ingot", "tlib_jungle:jungle_ingot"},
			{"", "tlib_jungle:jungle_thorn", ""},
			{"", "tlib_jungle:jungle_thorn", ""}
		}
	})

	minetest.register_craft({
		output = "tlib_jungle:jungle_tool_shovel",
		recipe = {
			{"tlib_jungle:jungle_ingot"},
			{"tlib_jungle:jungle_thorn"},
			{"tlib_jungle:jungle_thorn"}
		}
	})

	minetest.register_craft({
		output = "tlib_jungle:jungle_tool_axe",
		recipe = {
			{"tlib_jungle:jungle_ingot", "tlib_jungle:jungle_ingot"},
			{"tlib_jungle:jungle_ingot", "tlib_jungle:jungle_thorn"},
			{"", "tlib_jungle:jungle_thorn"}
		}
	})

	minetest.register_craft({
		output = "tlib_jungle:jungle_tool_sword",
		recipe = {
			{"tlib_jungle:jungle_ingot"},
			{"tlib_jungle:jungle_ingot"},
			{"tlib_jungle:jungle_thorn"}
		}
	})

minetest.register_craftitem("tlib_jungle:jungle_ingot", {
	description = ("Jungle Ingot"),
	inventory_image = "tlib_jungle_jungle_ingot.png",
})

minetest.register_node("tlib_jungle:jungle_block", {
	description = ("Jungle Block"),
	tiles = {"tlib_jungle_jungle_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_metal_defaults(),
})


minetest.register_craft({
	type = "shapeless",
	output = "tlib_jungle:jungle_ingot 1",
	recipe = {
		"tlib_jungle:jungle_spores",
		"tlib_jungle:jungle_spores",
		"tlib_jungle:jungle_spores",
		"tlib_jungle:jungle_spores",
		"tlib_jungle:jungle_spores",
		"tlib_jungle:jungle_spores",
		"tlib_jungle:jungle_spores",
		"default:tin_ingot",
		"default:tin_ingot",
	}
})

	minetest.register_craft({
		output = "tlib_jungle:jungle_block",
		recipe = {
			{"tlib_jungle:jungle_ingot", "tlib_jungle:jungle_ingot", "tlib_jungle:jungle_ingot"},
			{"tlib_jungle:jungle_ingot", "tlib_jungle:jungle_ingot", "tlib_jungle:jungle_ingot"},
			{"tlib_jungle:jungle_ingot", "tlib_jungle:jungle_ingot", "tlib_jungle:jungle_ingot"}		}
	})

	minetest.register_craft({
		output = "tlib_jungle:jungle_ingot 9",
		recipe = {
			{"tlib_jungle:jungle_block"}		}
	})

minetest.register_craft({
	type = "shapeless",
	output = "tlib_jungle:jungle_ingot",
	recipe = {
		"tlib_jungle:crimson_dust",
		"tlib_jungle:crimson_dust",
		"tlib_jungle:crimson_dust",
		"tlib_jungle:crimson_dust",
		"tlib_jungle:crimson_dust",
		"tlib_jungle:crimson_dust",
		"tlib_jungle:crimson_dust",
		"tlib_jungle:crimson_dust",
		"default:steel_ingot",
	}
})