--Code : GPL v3
--Textures : CC-BY-SA 4.0

minetest.register_node('factory_ladder:steel_ladder', {
	description = 'steel ladder',
	tiles = {'factory_steel.png'},
	inventory_image = 'steel_ladder_inv.png',
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	climbable = true,
	walkable = false,
	groups = {cracky=1,level=1}, --need a steel pickaxe (or more) to break
	sounds = default.node_sound_stone_defaults(),
		node_box = {
		type = 'fixed',
		fixed = {
			{-0.3, 0.05, 0.4, 0.3, -0.05, 0.475}, -- NodeBox1
			{-0.3, 0.28, 0.4, 0.3, 0.38, 0.475}, -- NodeBox2
			{-0.3, -0.28, 0.4, 0.3, -0.38, 0.475}, -- NodeBox3
			{-0.4, -0.5, 0.375, -0.3, 0.5, 0.5}, -- NodeBox4
			{0.4, -0.5, 0.375, 0.3, 0.5, 0.5}, -- NodeBox5
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.3, 0.05, 0.4, 0.3, -0.05, 0.475}, -- NodeBox1
			{-0.3, 0.28, 0.4, 0.3, 0.38, 0.475}, -- NodeBox2
			{-0.3, -0.28, 0.4, 0.3, -0.38, 0.475}, -- NodeBox3
			{-0.4, -0.5, 0.375, -0.3, 0.5, 0.5}, -- NodeBox4
			{0.4, -0.5, 0.375, 0.3, 0.5, 0.5}, -- NodeBox5
		}
	},
})

minetest.register_node('factory_ladder:rusty_ladder', {
	description = 'rusty ladder',
	tiles = {'rusty_ladder.png'},
	inventory_image = 'rusty_ladder_inv.png',
	drawtype = 'nodebox',
	paramtype = 'light',
	paramtype2 = 'facedir',
	climbable = true,
	walkable = false,
	groups = {cracky=1,level=1}, --need a steel pickaxe (or more) to break
	sounds = default.node_sound_stone_defaults(),
		node_box = {
		type = 'fixed',
		fixed = {
			{-0.3, 0.05, 0.4, 0.3, -0.05, 0.475}, -- NodeBox1
			{-0.3, 0.28, 0.4, 0.3, 0.38, 0.475}, -- NodeBox2
			{-0.3, -0.28, 0.4, 0.3, -0.38, 0.475}, -- NodeBox3
			{-0.4, -0.5, 0.375, -0.3, 0.5, 0.5}, -- NodeBox4
			{0.4, -0.5, 0.375, 0.3, 0.5, 0.5}, -- NodeBox5
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.3, 0.05, 0.4, 0.3, -0.05, 0.475}, -- NodeBox1
			{-0.3, 0.28, 0.4, 0.3, 0.38, 0.475}, -- NodeBox2
			{-0.3, -0.28, 0.4, 0.3, -0.38, 0.475}, -- NodeBox3
			{-0.4, -0.5, 0.375, -0.3, 0.5, 0.5}, -- NodeBox4
			{0.4, -0.5, 0.375, 0.3, 0.5, 0.5}, -- NodeBox5
		}
	},
})

minetest.register_craft({
	output = 'factory_ladder:steel_ladder 6',
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', '', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'factory_ladder:rusty_ladder 6',
	recipe = {
		{'default:iron_lump', '', 'default:iron_lump'},
		{'default:iron_lump', 'default:iron_lump', 'default:iron_lump'},
		{'default:iron_lump', '', 'default:iron_lump'},
	}
})
--recycling with 1 ingot lost
minetest.register_craft({
	type = 'cooking',
	cooktime = 5,
	output = 'default:steel_ingot 1',
	recipe = 'factory_ladder:steel_ladder',	
})

minetest.register_craft({
	type = 'cooking',
	cooktime = 5,
	output = 'default:steel_ingot 1',
	recipe = 'factory_ladder:rusty_ladder',	
})
