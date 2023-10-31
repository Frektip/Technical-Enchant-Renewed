#Datapack Version
scoreboard players set #teplus.version load.status 740

#Load constants
scoreboard objectives add teplus.data dummy
scoreboard objectives add teplus.place dummy
scoreboard players set #1const teplus.data 1
scoreboard players set #2const teplus.data 2
scoreboard players set #3const teplus.data 3
scoreboard players set #4const teplus.data 4
scoreboard players set #5const teplus.data 5
scoreboard players set #7const teplus.data 7
scoreboard players set #10const teplus.data 10
scoreboard players set #19const teplus.data 19
scoreboard players set #25const teplus.data 25
scoreboard players set #30const teplus.data 30
scoreboard players set #33const teplus.data 33
scoreboard players set #50const teplus.data 50
scoreboard players set #200const teplus.data 200
scoreboard players set #250const teplus.data 250

#Scoreboard for xp reward when disenchanting
scoreboard objectives add teplus.diench dummy

#Charged Bookshelf and armor stand scoreboards
scoreboard objectives add teplus.block_id dummy
scoreboard objectives add tep.CbBf.qnty dummy
scoreboard objectives add tep.CbBf.animt dummy
scoreboard objectives add tep.spd_animt dummy
scoreboard objectives add tep.hover dummy

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

scoreboard objectives add teplus.firod dummy

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

scoreboard objectives add teplus.hoe dummy
scoreboard objectives add tep.use_nhoe minecraft.used:minecraft.netherite_hoe
scoreboard objectives add tep.use_dhoe minecraft.used:minecraft.diamond_hoe
scoreboard objectives add tep.use_ihoe minecraft.used:minecraft.iron_hoe
scoreboard objectives add tep.use_ghoe minecraft.used:minecraft.golden_hoe
scoreboard objectives add tep.use_shoe minecraft.used:minecraft.stone_hoe
scoreboard objectives add tep.use_whoe minecraft.used:minecraft.wooden_hoe


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
scoreboard objectives add teplus.facdmg dummy
scoreboard objectives add teplus.racdmg dummy
scoreboard objectives add teplus.xpcrtl dummy

#Timers
scoreboard objectives add TimerHurt dummy
scoreboard objectives add TimerFeed dummy
scoreboard objectives add TimerYearsBirth dummy
scoreboard objectives add TimerBloodyBlade dummy
scoreboard objectives add TimerEnch dummy
scoreboard objectives add TimerKill dummy
scoreboard objectives add TimerDrop dummy
scoreboard objectives add TimerSniper dummy
scoreboard objectives add TimerHarvest dummy
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

scoreboard objectives add BaseCharge dummy

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
scoreboard objectives add teplus.maxlvl dummy 

#When creating a world for the first time,
# set the options (default options)
execute unless score #new_world Enchopts matches 1 run function enchantplus:set_options/init

#Register the enchantments
function #enchantplus:register

#Fix bow and crossbow enchantments when unistalling the pack 
# (idk why this happens but it's a solution anyways)
execute as @a[tag=teplus.uuid] run function enchbowcross:new_user


#Detect TE+ extensions
scoreboard objectives add tep.exten dummy

#Detect Addons
function enchantplus:detect/addons_check
function enchantplus:detect/complements_check


#Tellraw
tellraw @a ["",{"text":"             [","color":"gold"},{"text":"Technical Enchant+ Renewed","color":"green"},{"text":" is ready","color":"green"},{"text":"]","color":"gold"}]
tellraw @a ["",{"text":"              *------*--*--*------*--*--*------*","color":"gold"}]
tellraw @a ["",{"text":"        *-----*","color":"gold"},{"text":" By Hardel ","color":"blue"},{"text":" Modified by Frektip ","color":"red"},{"text":"*-----*","color":"gold"}]
tellraw @a ["",{"text":"                      [","color":"aqua","italic":true},{"translate":"Reset All Global Settings","color":"#DDC65C","clickEvent":{"action":"suggest_command","value":"/function enchantplus:set_options/init"},"italic":true},{"text":"]","color":"aqua","italic":true}]
tellraw @a ["",{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}]

execute if score $Addon tep.exten matches 0 run tellraw @a ["",{"translate":"TE+ Addons:","color":"yellow"},{"translate":" Not detected","color":"dark_red"}]
execute if score $Addon tep.exten matches 1.. run tellraw @a ["",{"translate":"TE+ Addons:","color":"yellow"},{"translate":" Were detected","color":"dark_green"},{"text":"  "},{"score":{"name":"$Addon","objective":"tep.exten"},"color":"#6CBA8F"}]
execute if score $Complement tep.exten matches 0 run tellraw @a ["",{"translate":"TE+ Complements:","color":"yellow"},{"translate":" Not detected","color":"dark_red"}]
execute if score $Complement tep.exten matches 1.. run tellraw @a ["",{"translate":"TE+ Complements:","color":"yellow"},{"translate":" Were detected","color":"dark_green"},{"text":"  "},{"score":{"name":"$Complement","objective":"tep.exten"},"color":"#6CBA8F"}]
tellraw @a ["",{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}]
