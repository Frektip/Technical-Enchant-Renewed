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
##-----#-----#-----#-----# When the player drop something #-----#-----#-----#-----#-----#
# It could be:
# -To enchant an item
# -To obtain a charged bookshelf or technical anvil
# -To disenchant
# -To obtain a guide book
execute if entity @s[scores={Drop=1..}] run function enchantplus:entity/player/when_drop 



##-----#-----#-----#-----# Scoreboard Stuff #-----#-----#-----#-----#-----#
# Take damage - Allows to always use an updated score
scoreboard players reset @s[scores={TakeDamage=1..}] TakeDamage
scoreboard players add @s[scores={teplus.facdmg=1..}] TimerHurt 1
scoreboard players reset @s[scores={TimerHurt=60..}] teplus.facdmg
scoreboard players reset @s[scores={TimerHurt=60..}] TimerHurt

#Use "tool" scoreboards
scoreboard players set @s teplus.pick 0
scoreboard players set @s teplus.shov 0
scoreboard players set @s teplus.axe 0
scoreboard players set @s teplus.firod 0
scoreboard players set @s teplus.hoe 0
function enchantplus:entity/player/when_mined_block/core

#Enable /trigger commands
#When using the Guide Book
execute if score @s TellrawEnch matches 1.. run function enchantplus:guide
#When using /trigger Teplus.Report
# Add a tag that will last 1 tick (so the message won't get spammed)
tag @s[scores={Teplus.Report=1..}] add teplus.get_report
scoreboard players reset @s[tag=teplus.pydbgm,tag=teplus.get_report,scores={Teplus.Report=1..}] Teplus.Report
tag @s[scores={Teplus.Report=0..}] remove teplus.get_report

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