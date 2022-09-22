# Clearing ui items
clear @s #technical_anvil:ui{Teplus:{ui:1b}}
##-----#-----#-----#-----# Enchantments #-----#-----#-----#-----#-----#
execute if predicate enchantplus:has_ench/general run function enchantplus:enchantments/core 
function enchbowcross:player/loop

execute if entity @s[tag=trigger_protection] run function enchantplus:result/turtle_stiffness/loop
execute if entity @s[tag=teplus.celebrate] run function enchantplus:result/birthday/init
execute if entity @s[tag=teplus.exhausted] run function enchantplus:result/exhaustion/effects
execute if entity @s[tag=teplus.fearatt,predicate=!enchantplus:has_fear] run function enchantplus:result/fear/reset_player
##-----#-----#-----#-----# When Fishing #-----#-----#-----#-----#-----#
execute if entity @s[tag=teplus.fishing] run function enchantplus:entity/player/fishing/find_item
##-----#-----#-----#-----# Enchantments System #-----#-----#-----#-----#-----#
function enchantplus:entity/player/when_drop 



##-----#-----#-----#-----# Scoreboard Stuff #-----#-----#-----#-----#-----#
#Enable /trigger commands
execute if score @s TellrawEnch matches 1.. run function enchantplus:guide
scoreboard players reset @s[tag=teplus.pydbgm,scores={Teplus.Report=1..}] Teplus.Report

scoreboard players enable @s TellrawEnch
scoreboard players enable @s[tag=teplus.pydbgm] Teplus.Report

#Reset Drop timer
execute if score @s TimerDrop matches 40.. if score @s Drop matches 1.. run scoreboard players set @s Drop 0 
execute if score @s TimerDrop matches 40.. run scoreboard players set @s TimerDrop 0 
execute if score @s Drop matches 1.. run scoreboard players add @s TimerDrop 1 

#Reset Bloody Blade (prevent exploits)
scoreboard players remove @s[scores={TimerBloodyBlade=1..}] TimerBloodyBlade 1
scoreboard players reset @s[scores={TimerBloodyBlade=0}] BloodyBladeCount

#Reset Splatter use (prevent exploits)
scoreboard players reset @s[scores={Splatter.Shoot=1..}] Splatter.Shoot