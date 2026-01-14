mobs:register_mob("tlib_jungle:flower_child", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 5,
	hp_min = 24,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.3125, -0.5000, -0.3125, 0.3125, 0.2500, 0.3125},
	visual_size = {x=0.8, y=0.5},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {{"tlib_jungle_flower_child.png"}},
	makes_footstep_sound = true,
--	sounds = {random = "mobs_stonemonster"},
	walk_velocity = 1,
	run_velocity = 4,
	stepheight = 1.1,
	floats = 0,
	view_range = 15,
	drops = {
		{name = "terralibmt:mud", chance = 1, min = 0, max = 1},
		{name = "default:junglegrass", chance = 5, min = 0, max = 1}
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	animation = {
		speed_normal = 15, speed_run = 15,
		stand_start = 0, stand_end = 14,
		walk_start = 15, walk_end = 38,
		run_start = 40, run_end = 63,
		punch_start = 40, punch_end = 63
	},
})

mobs:spawn({
	name = "tlib_jungle:flower_child",
	nodes = {"tlib_jungle:mud_with_jungle_grass"},
	active_object_count = 2,
	max_height = 0,
        chance = 4000
})

-- spawn egg

mobs:register_egg("tlib_jungle:flower_child", ("Flowerchild"), "tlib_jungle_egg_texture.png", 1)