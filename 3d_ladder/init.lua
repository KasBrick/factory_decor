-- License for code and textures: CC0 1.0 <https://creativecommons.org/publicdomain/zero/1.0/>

minetest.register_node(':default:ladder', {
	description = 'ladder',
	tiles = {'default_wood.png'},
	inventory_image = 'default_ladder.png',
    drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	climbable = true,
	walkable = false,
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	sounds = default.node_sound_stone_defaults(),
		node_box = {
		type = 'fixed',
		fixed = {
			{-0.5, 0.05, 0.4, 0.5, -0.05, 0.475}, -- NodeBox1
			{-0.5, 0.28, 0.4, 0.5, 0.38, 0.475}, -- NodeBox2
			{-0.5, -0.28, 0.4, 0.5, -0.38, 0.475}, -- NodeBox3
			{-0.4, -0.5, 0.375, -0.3, 0.5, 0.5}, -- NodeBox4
			{0.4, -0.5, 0.375, 0.3, 0.5, 0.5}, -- NodeBox5
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.5, 0.05, 0.4, 0.5, -0.05, 0.475}, -- NodeBox1
			{-0.5, 0.28, 0.4, 0.5, 0.38, 0.475}, -- NodeBox2
			{-0.5, -0.28, 0.4, 0.5, -0.38, 0.475}, -- NodeBox3
			{-0.4, -0.5, 0.375, -0.3, 0.5, 0.5}, -- NodeBox4
			{0.4, -0.5, 0.375, 0.3, 0.5, 0.5}, -- NodeBox5
		}
	},
})

minetest.register_craft({
	output = 'default:ladder',
	recipe = {
		{'group:stick', '', 'group:stick'},
		{'group:stick', 'group:stick', 'group:stick'},
		{'group:stick', '', 'group:stick'},
	}
})
