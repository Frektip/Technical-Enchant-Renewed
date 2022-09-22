#Revome Technical Anvil Minecart, so it also kills "decorative" entities
execute as @e[type=chest_minecart,tag=teplus.technical_anvil] at @s run setblock ~ ~ ~ air
kill @e[type=chest_minecart,tag=teplus.technical_anvil]

#Stop tick functions
schedule clear enchbowcross:main
schedule clear enchantplus:main
schedule clear technical_anvil:main

#remove scoreboards
scoreboard objectives remove teplus.diench
scoreboard objectives remove Drop
scoreboard objectives remove LifeStealDealt
scoreboard objectives remove HealthEnch
scoreboard objectives remove BloodyBladeCount
scoreboard objectives remove XpBoostKill
scoreboard objectives remove teplus.xpbst
scoreboard objectives remove FireworkYear
scoreboard objectives remove TakeDamage
scoreboard objectives remove LifeCount
scoreboard objectives remove MarineCount
scoreboard objectives remove UUID0
scoreboard objectives remove UUID1
scoreboard objectives remove UUID2
scoreboard objectives remove UUID3
scoreboard objectives remove teplus.arrow
scoreboard objectives remove teplus.accst
scoreboard objectives remove teplus.arach
scoreboard objectives remove teplus.explo
scoreboard objectives remove teplus.frbwv
scoreboard objectives remove teplus.shfng
scoreboard objectives remove teplus.snpr
scoreboard objectives remove teplus.fear
scoreboard objectives remove teplus.motX
scoreboard objectives remove teplus.motY
scoreboard objectives remove teplus.motZ
scoreboard objectives remove TimerFeed
scoreboard objectives remove TimerYearsBirth
scoreboard objectives remove TimerBloodyBlade
scoreboard objectives remove TimerEnch
scoreboard objectives remove TimerKill
scoreboard objectives remove TimerDrop
scoreboard objectives remove TimerSniper
scoreboard objectives remove TimerHarvest
scoreboard objectives remove TellrawEnch
scoreboard objectives remove random
scoreboard objectives remove game.Opts
scoreboard objectives remove Enchopts
scoreboard objectives remove Splatter.Shoot
scoreboard objectives remove tep.rc
scoreboard objectives remove TimerinLava
scoreboard objectives remove TimerFlame
scoreboard objectives remove tep.plid
scoreboard objectives remove tep.mot
scoreboard objectives remove BalloonYear
scoreboard objectives remove tep.count
scoreboard objectives remove tep.horse
scoreboard objectives remove tep.CbBf.qnty
scoreboard objectives remove tep.spd_animt
scoreboard objectives remove tep.avl
scoreboard objectives remove TCHA.Value
scoreboard objectives remove TCHA.plxp
scoreboard objectives remove TCHA.Section1
scoreboard objectives remove TCHA.Section2
scoreboard objectives remove TimerTurtle
scoreboard objectives remove TimerTimeBreak
scoreboard objectives remove WaitTimeBreak
scoreboard objectives remove attb.armor
scoreboard objectives remove attb.knbrs
scoreboard objectives remove attb.toug
scoreboard objectives remove attb.dmg
scoreboard objectives remove MarineCarry
scoreboard objectives remove teplus.vgmrl
scoreboard objectives remove CobwebGroup
scoreboard objectives remove InLiqdTime
scoreboard objectives remove tep.exten
scoreboard objectives remove teplus.data
scoreboard objectives remove teplus.antkbk
scoreboard objectives remove teplus.hrds
scoreboard objectives remove Teplus.Report
scoreboard objectives remove TimerExha
scoreboard objectives remove teplus.htlct
scoreboard objectives remove teplus.scared

#I don't remove scoreboards related to Lantern Load or Iris because they may be used
# alongside with other datapacks. In that case they should do a reload, but meh, I
# preffer avoiding problems
scoreboard players set #teplus.version load.status -1

#Kill custom entities
kill @e[type=armor_stand,tag=teplus.armor_stand]
kill @e[type=marker,tag=teplus.marker]
kill @e[type=item_frame,tag=teplus.enchanted]
kill @e[tag=turtle_shield]
kill @e[type=arrow,tag=tep.custom_arrow]
kill @e[tag=teplus.technical_anvil_decorative]
kill @e[type=item,nbt={Item:{tag:{Teplus:{ui:1b}}}}]



#Uninstall message 
tellraw @a ["",{"text":" \u0020[","color":"gold"},{"text":"Technical Enchant+","color":"aqua"},{"text":"]","color":"gold"},{"translate":" has been","color":"#B23735"},{"translate":" uninstalled","bold":true,"color":"dark_red"},{"translate":" successfully.","color":"#B23735"},{"text":"\n"},{"translate":"Be sure to remove it from your datapack folder!","color":"gold"},{"text":"\n"},{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}] 
playsound block.note_block.hat player @a ~ ~ ~ 2 0.5 

#acutally disable the pack xd
datapack disable "file/technical-enchant-v7-1-0.zip"

#Remove player tags, just in case
tag @a remove teplus.uuid
tag @a remove new_last
tag @a remove lastlife_ready
tag @a remove ParticleLastLife
tag @a remove lv.vis
tag @a remove lv.spec
tag @a remove flsk.dly
tag @a remove trigger_protection
tag @a remove tibr.active
tag @a remove ma.graced
tag @a remove marine.carried
tag @a remove teplus.exhausted
tag @a remove teplus.fearatt