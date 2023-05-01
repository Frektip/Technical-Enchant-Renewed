###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnv): ","color":"yellow","italic":true,"bold":false},{"text":"Enough levels! Giving output item","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnv): ","color":"yellow","italic":true,"bold":false},{"text":"Taking xp levels","color":"gray","italic":true,"bold":false}]

playsound block.anvil.use master @a[distance=..6] ~ ~ ~ 1 1 1
execute if score #tslpm game.Opts matches 1 run particle nautilus ~ ~1.5 ~ 0.0001 0.01 0.0001 5 1000 
execute if score #tslpm game.Opts matches 1 run particle block anvil ~ ~1 ~ 0.3 0 0.3 1 150

#Check if the xp value from the settings has sense (at least 0 levels)
# Only for "normal" combining
execute if entity @s[tag=!No.xpcomb] run scoreboard players operation @p[tag=TECHA.try] TCHA.plxp = @s TCHA.cost
execute if entity @s[tag=!No.xpcomb] as @p[tag=TECHA.try,scores={TCHA.plxp=0..}] run function technical_anvil:interaction/clic_combine/take_xp


#In case it has a "different" combining
execute if entity @s[tag=No.xpcomb] as @p[tag=TECHA.try] run function technical_anvil:interaction/clic_combine/take_less_xp


data remove entity @s Items[{Slot:2b}]
data remove entity @s Items[{Slot:6b}]
data modify storage teplus:tech_anvil.ui CurrentItems set from entity @s Items
function technical_anvil:menu/change_item/empty_sections
