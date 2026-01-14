mobs:register_mob("tlib_jungle:jungle_spirit", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 4,
	hp_min = 25,
	hp_max = 35,
	armor = 100,
	collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	visual_scale = {x = 0.5, y = 0.5, z = 0.5},
	visual = "sprite",
	textures = {{"tlib_jungle_jungle_spirit.png"}},
	glow = 12,
	blood_texture = "tlib_jungle_jungle_spirit.png",
	immune_to = {
		{"bucket:bucket_lava", 2},
	},
	makes_footstep_sound = false,
	sounds = {
		random = "default_leaves_dig",
		damage = "default_leaves_dig",
		death = "fire_extinguish_flame"
	},
	view_range = 14,
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	jump_height = 6,
	water_damage = 0,
	lava_damage = 6,
	fire_damage = 4,
	light_damage = 0,
	fall_damage = false,
	fear_height = 8,
	animation = {},

	on_die = function(self, pos)

		mobs:effect(pos, 20, "tnt_smoke.png", 3, 5, 2, 0.5, nil, false)

		self.object:remove()
	end,

	do_custom = function(self, dtime)

		self.flame_timer = (self.flame_timer or 0) + dtime

		if self.flame_timer < 0.1 then return end

		self.flame_timer = 0

		local pos = self.object:get_pos()

		-- pos, amount, texture, min_size, max_size, radius, gravity, glow, fall
		mobs:effect(pos, 5, "tlib_jungle_jungle_spirit_partical.png", 1, 2, 0.1, 0.2, 14, nil)
	end
})

-- where to spawn

if not mobs.custom_spawn_monster then

	mobs:spawn({
		name = "tlib_jungle:jungle_spirit",
		nodes = {"tlib_jungle:mud_with_jungle_grass"},
		chance = 12000,
		active_object_count = 1,
		max_height = -512
	})
end

-- spawn egg

mobs:register_egg("tlib_jungle:jungle_spirit", ("Jungle Spirit"), "tlib_jungle_jungle_spirit_partical.png", 1)