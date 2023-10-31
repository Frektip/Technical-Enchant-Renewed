###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnv): ","color":"yellow","italic":true,"bold":false},{"text":"Giving a experience crystal to a player","color":"gray","italic":true,"bold":false}]

#Look for the player "owner" of the technical anvil

playsound block.anvil.use master @a[distance=..6] ~ ~ ~ 1 1 1
execute if score #tslpm game.Opts matches 1 run particle nautilus ~ ~1.5 ~ 0.0001 0.01 0.0001 5 1000 
execute if score #tslpm game.Opts matches 1 run particle block anvil ~ ~1 ~ 0.3 0 0.3 1 150

data remove entity @s Items[{Slot:2b}]
data remove entity @s Items[{Slot:6b}]
data modify storage teplus:tech_anvil.ui CurrentItems set from entity @s Items
function technical_anvil:menu/change_item/empty_sections

tag @s remove CanCombine
tag @s remove Noxpcost

function technical_anvil:menu/change_item/deactivate_slots