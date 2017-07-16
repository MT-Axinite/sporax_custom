local requartz = function(names)
	for _,qname in ipairs(names) do
		minetest.register_alias("nether:"..qname,"quartz:"..qname)
	end
end

requartz({
	"block",
	"quartz_crystal",
	"quartz_crystal_piece",
})

minetest.register_node("axinite:stone",{
	tiles = {"default_stone.png"},
        groups = {cracky = 3, stone = 1},
        drop = 'default:cobble',
        legacy_mineral = true,
        sounds = default.node_sound_stone_defaults(),

})

minetest.register_alias("sporax_custom:stone","axinite:stone")
minetest.register_alias("inbox:inbox_empty","mailbox:mailbox")

--dofile(minetest.get_modpath("axinite".."/newplayer.lua"))
