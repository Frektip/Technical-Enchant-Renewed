#Revome Technical Anvil Minecart, so it also kills "decorative" entities
execute as @e[type=chest_minecart,tag=teplus.technical_anvil] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=teplus.admin_box] at @s run setblock ~ ~ ~ air
kill @e[type=chest_minecart,tag=teplus.technical_anvil]

#Stop tick functions
schedule clear enchbowcross:main
schedule clear enchantplus:main
schedule clear technical_anvil:main

#Clear data storages
data remove storage teplus:item_dura item
data remove storage teplus:tech_anvil.ench TeplusVanilla
data remove storage teplus:tech_anvil.ench TeplusEnchantments
data remove storage teplus:tech_anvil.ench TeplusCurses

data remove storage teplus:tech_anvil.ui Setup
data remove storage teplus:tech_anvil.ui Setup_extract
data remove storage teplus:tech_anvil.ui CurrentItems
data remove storage teplus:tech_anvil.ui ResultItem
data remove storage teplus:tech_anvil.ui CurrentUI
data remove storage teplus:tech_anvil.ui ChangedItems
data remove storage teplus:tech_anvil.ui CurrentUICheckChange
data remove storage teplus:tech_anvil.ui SectionChange1
data remove storage teplus:tech_anvil.ui SectionChange2

data remove storage teplus:tech_extract CurrentItems
data remove storage teplus:tech_extract ResultItem
data remove storage teplus:tech_extract CurrentUI
data remove storage teplus:tech_extract ChangedItems
data remove storage teplus:tech_extract CurrentUICheckChange
data remove storage teplus:tech_extract SectionChange1
data remove storage teplus:tech_extract SectionChange2
data remove storage teplus:tech_extract FromItem
data remove storage teplus:tech_extract First

data remove storage teplus:item_lore CurrentLore
data remove storage teplus:item_lore First
data remove storage teplus:item_lore TempEnch
data remove storage teplus:item_lore Level

data remove storage teplus:loot Copy
data remove storage teplus:loot First
data remove storage teplus:loot Build

data remove storage teplus:register Custom

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
scoreboard objectives remove TimerHurt
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
scoreboard objectives remove tep.hover
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

scoreboard objectives remove teplus.firod

scoreboard objectives remove teplus.pick
scoreboard objectives remove teplus.npick
scoreboard objectives remove teplus.dpick
scoreboard objectives remove teplus.ipick
scoreboard objectives remove teplus.gpick
scoreboard objectives remove teplus.spick
scoreboard objectives remove teplus.wpick

scoreboard objectives remove teplus.axe
scoreboard objectives remove teplus.naxe
scoreboard objectives remove teplus.daxe
scoreboard objectives remove teplus.iaxe
scoreboard objectives remove teplus.gaxe
scoreboard objectives remove teplus.saxe
scoreboard objectives remove teplus.waxe

scoreboard objectives remove teplus.shov
scoreboard objectives remove teplus.nshov
scoreboard objectives remove teplus.dshov
scoreboard objectives remove teplus.ishov
scoreboard objectives remove teplus.gshov
scoreboard objectives remove teplus.sshov
scoreboard objectives remove teplus.wshov

scoreboard objectives remove teplus.hoe
scoreboard objectives remove teplus.nhoe
scoreboard objectives remove teplus.dhoe
scoreboard objectives remove teplus.ihoe
scoreboard objectives remove teplus.ghoe
scoreboard objectives remove teplus.shoe
scoreboard objectives remove teplus.whoe

scoreboard objectives remove tep.avl
scoreboard objectives remove TCHA.Value
scoreboard objectives remove TCHA.plxp
scoreboard objectives remove attb.armor
scoreboard objectives remove attb.knbrs
scoreboard objectives remove attb.toug
scoreboard objectives remove attb.dmg
scoreboard objectives remove TCHA.Section1
scoreboard objectives remove TCHA.Section2
scoreboard objectives remove teplus.antkbk
scoreboard objectives remove teplus.hrds
scoreboard objectives remove teplus.lore
scoreboard objectives remove teplus.cslore
scoreboard objectives remove teplus.cencnt
scoreboard objectives remove teplus.tmplvl
scoreboard objectives remove teplus.single
scoreboard objectives remove teplus.maxlvl
scoreboard objectives remove teplus.place
scoreboard objectives remove teplus.block_id
scoreboard objectives remove TCHA.cost

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
kill @e[type=item,nbt={Item:{tag:{Teplus:{ui:1b}}}}]
kill @e[tag=teplus.decorative]


#Uninstall message 
tellraw @a ["",{"text":" \u0020[","color":"gold"},{"text":"Technical Enchant+","color":"aqua"},{"text":"]","color":"gold"},{"translate":" has been","color":"#B23735"},{"translate":" uninstalled","bold":true,"color":"dark_red"},{"translate":" successfully.","color":"#B23735"},{"text":"\n"},{"translate":"Be sure to remove it from your datapack folder!","color":"gold"},{"text":"\n"},{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}] 
playsound block.note_block.hat player @a ~ ~ ~ 2 0.5

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