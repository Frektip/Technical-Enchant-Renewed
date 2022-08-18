#This advancement only triggers with the player do a critical hit with an axe
advancement revoke @s only enchantplus:striker

execute if score #strk Enchopts matches 0 run function enchantplus:result/striker/start
