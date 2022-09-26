#Datapack Version
scoreboard players set #teplus.version load.status 711

#Load constants
scoreboard objectives add teplus.data dummy
scoreboard players set #10const teplus.data 10
scoreboard players set #2const teplus.data 2
scoreboard players set #5const teplus.data 5

#Scoreboard for xp reward when disenchanting
scoreboard objectives add teplus.diench dummy

#Charged Bookshelf and armor stand scoreboards
scoreboard objectives add tep.CbBf.qnty dummy
scoreboard objectives add tep.CbBf.animt dummy
scoreboard objectives add tep.spd_animt dummy

#Bow and crossbow enchantments system
scoreboard objectives add UUID0 dummy 
scoreboard objectives add UUID1 dummy 
scoreboard objectives add UUID2 dummy 
scoreboard objectives add UUID3 dummy 

scoreboard objectives add teplus.arrow dummy 
scoreboard objectives add teplus.accst dummy
scoreboard objectives add teplus.arach dummy 
scoreboard objectives add teplus.explo dummy
scoreboard objectives add teplus.frbwv dummy
scoreboard objectives add teplus.shfng dummy
scoreboard objectives add teplus.snpr dummy
scoreboard objectives add teplus.fear dummy

scoreboard objectives add teplus.motX dummy
scoreboard objectives add teplus.motY dummy
scoreboard objectives add teplus.motZ dummy

#Scoreboards when using any mining tool
scoreboard objectives add teplus.pick dummy
scoreboard objectives add tep.use_npick minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add tep.use_dpick minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add tep.use_ipick minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add tep.use_gpick minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add tep.use_spick minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add tep.use_wpick minecraft.used:minecraft.wooden_pickaxe

scoreboard objectives add teplus.shov dummy
scoreboard objectives add tep.use_nshov minecraft.used:minecraft.netherite_shovel
scoreboard objectives add tep.use_dshov minecraft.used:minecraft.diamond_shovel
scoreboard objectives add tep.use_ishov minecraft.used:minecraft.iron_shovel
scoreboard objectives add tep.use_gshov minecraft.used:minecraft.golden_shovel
scoreboard objectives add tep.use_sshov minecraft.used:minecraft.stone_shovel
scoreboard objectives add tep.use_wshov minecraft.used:minecraft.wooden_shovel

scoreboard objectives add teplus.axe dummy
scoreboard objectives add tep.use_naxe minecraft.used:minecraft.netherite_axe
scoreboard objectives add tep.use_daxe minecraft.used:minecraft.diamond_axe
scoreboard objectives add tep.use_iaxe minecraft.used:minecraft.iron_axe
scoreboard objectives add tep.use_gaxe minecraft.used:minecraft.golden_axe
scoreboard objectives add tep.use_saxe minecraft.used:minecraft.stone_axe
scoreboard objectives add tep.use_waxe minecraft.used:minecraft.wooden_axe


#More enchantments scoreboards
scoreboard objectives add Drop minecraft.custom:minecraft.drop
scoreboard objectives add LifeStealDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add HealthEnch health
scoreboard objectives add BloodyBladeCount dummy
scoreboard objectives add XpBoostKill totalKillCount
scoreboard objectives add teplus.xpbst dummy
scoreboard objectives add FireworkYear dummy
scoreboard objectives add TakeDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add LifeCount health
scoreboard objectives add MarineCount dummy
scoreboard objectives add Splatter.Shoot minecraft.used:minecraft.fishing_rod
scoreboard objectives add tep.rc dummy
scoreboard objectives add tep.plid dummy
scoreboard objectives add tep.mot dummy
scoreboard objectives add BalloonYear dummy
scoreboard objectives add tep.count dummy
scoreboard objectives add tep.horse dummy
scoreboard objectives add teplus.htlct dummy
scoreboard objectives add teplus.scared dummy

#Timers
scoreboard objectives add TimerFeed dummy
scoreboard objectives add TimerYearsBirth dummy
scoreboard objectives add TimerBloodyBlade dummy
scoreboard objectives add TimerEnch dummy
scoreboard objectives add TimerKill dummy
scoreboard objectives add TimerDrop dummy
scoreboard objectives add TimerSniper dummy
scoreboard objectives add TimerHarvest dummy
scoreboard objectives add TimerinLava dummy
scoreboard objectives add TimerFlame dummy
scoreboard objectives add TimerTurtle dummy
scoreboard objectives add TimerTimeBreak dummy
scoreboard objectives add WaitTimeBreak dummy
scoreboard objectives add TimerDash dummy
scoreboard objectives add MasterDash dummy
scoreboard objectives add MasterCelebrate dummy
scoreboard objectives add MarineCarry dummy
scoreboard objectives add CobwebGroup dummy
scoreboard objectives add InLiqdTime dummy
scoreboard objectives add TimerExha dummy

#Randomizer - Uniform (By Aeldrion)
scoreboard objectives add random dummy
execute unless score #lcg random = #lcg random store result score #lcg random run seed

scoreboard players set #8 random 8
scoreboard players set #lcg_a random 1630111353
scoreboard players set #lcg_c random 1623164762
scoreboard players set #lcg_m random 2147483647

#Guide Book navegation and Report command
scoreboard objectives add TellrawEnch trigger
scoreboard players enable @a TellrawEnch 
scoreboard objectives add Teplus.Report trigger
scoreboard players enable @a[tag=teplus.pydbgm] TellrawEnch

#Settings scoreboards
scoreboard objectives add game.Opts dummy 
scoreboard objectives add Enchopts dummy 

#When creating a world for the first time,
# set the options (default options)
execute unless score #new_world Enchopts matches 1 run function enchantplus:set_options

#Fix bow and crossbow enchantments when unistalling the pack 
# (idk why this happens but it's a solution anyways)
execute as @a[tag=teplus.uuid] run function enchbowcross:new_user


#Detect TE+ extensions
scoreboard objectives add tep.exten dummy

#Detect Villager module
function enchantplus:extention_detect/tech_villager_check

#Detect Addons
function enchantplus:extention_detect/addons_check


#Tellraw
tellraw @a ["",{"text":"             [","color":"gold"},{"text":"Technical Enchant+ Renewed","color":"green"},{"text":" is ready","color":"green"},{"text":"]","color":"gold"}]
tellraw @a ["",{"text":"              *------*--*--*------*--*--*------*","color":"gold"}]
tellraw @a ["",{"text":"        *-----*","color":"gold"},{"text":" By Hardel ","color":"blue"},{"text":" Modified by Frektip ","color":"red"},{"text":"*-----*","color":"gold"}]
tellraw @a ["",{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}] 
execute if score $Villager tep.exten matches 0 run tellraw @a ["",{"translate":"Custom Villagers Module:","color":"yellow"},{"translate":" Not installed","color":"dark_red"}]
execute if score $Villager tep.exten matches 1 run tellraw @a ["",{"translate":"Custom Villagers Module:","color":"yellow"},{"translate":" Installed","color":"dark_green"}]

execute if score $Addon tep.exten matches 0 run tellraw @a ["",{"translate":"Custom Addons:","color":"yellow"},{"translate":" Not detected","color":"dark_red"}]
execute if score $Addon tep.exten matches 1 run tellraw @a ["",{"translate":"Custom Addons:","color":"yellow"},{"translate":" Were detected","color":"dark_green"}]
tellraw @a ["",{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}]
