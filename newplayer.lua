

local playermessage = "Bienvenue sur Axinite ! Veuillez lire les regles a la bibliotheque au spawn!"


local fsn = "axinite:newplayer"
formspeccer:clear(fsn)

formspeccer:newform(fsn,"10,7")
formspeccer:add_textarea(fsn,{
	xy = "1,1",
	wh = "9,5",
	name = "message",
	value = playermessage,
	label = "",
})

formspeccer:add_button(fsn,{
	xy = "1,6",
	wh = "2,1",
	name = "OK",
	label = "OK",
},true)

minetest.register_on_newplayer(function(player)
	formspeccer:show(player,fsn)
end)
