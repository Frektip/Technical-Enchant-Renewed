# Clearing ui items
clear @s #technical_anvil:ui{Teplus:{ui:1b}}
##-----#-----#-----#-----# Enchantments #-----#-----#-----#-----#-----#
execute if predicate enchantplus:has_ench/general run function enchantplus:enchantments/core 

execute if entity @s[tag=trigger_protection] run function enchantplus:result/turtle_stiffness/loop
execute if entity @s[tag=teplus.celebrate] run function enchantplus:result/birthday/init
##-----#-----#-----#-----# When Fishing #-----#-----#-----#-----#-----#
execute if entity @s[tag=teplus.fishing] run function enchantplus:entity/player/fishing/find_item
##-----#-----#-----#-----# Enchantments System #-----#-----#-----#-----#-----#
function enchantplus:entity/player/when_drop 

execute if score @s TellrawEnch matches 1.. run function enchantplus:guide 

##-----#-----#-----#-----# Reset #-----#-----#-----#-----#-----#
execute if score @s TimerDrop matches 40.. if score @s Drop matches 1.. run scoreboard players set @s Drop 0 
execute if score @s TimerDrop matches 40.. run scoreboard players set @s TimerDrop 0 

execute if score @s Drop matches 1.. run scoreboard players add @s TimerDrop 1 

scoreboard players remove @s[scores={TimerBloodyBlade=1..}] TimerBloodyBlade 1
scoreboard players reset @s[scores={TimerBloodyBlade=0}] BloodyBladeCount

scoreboard players reset @s[scores={Splatter.Shoot=1..}] Splatter.Shoot