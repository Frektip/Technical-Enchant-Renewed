###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnv): ","color":"yellow","italic":true,"bold":false},{"text":"Getting levels from the nearest player","color":"gray","italic":true,"bold":false}]

#Look for the player "owner" of the technical anvil
execute if score @s tep.plid = @p tep.plid run tag @p add TECHA.try
#Get the levels from the player
execute as @p[tag=TECHA.try] store result score @p TCHA.plxp run xp query @s levels

#Check conditions before completing the action
# - If the Technical Anvil can combine
# - If the xp level settings requirement makes sence (not negative values)
# - If the player has more or equal levels than the ones in the settings

#For Survival
# Xp settings make sense
execute if entity @s[tag=CanCombine] unless score #xprq game.Opts matches ..1 if score @s TCHA.cost <= @p[tag=TECHA.try,gamemode=!creative] TCHA.plxp run function technical_anvil:interaction/clic_combine/succeed
execute if entity @s[tag=CanCombine] unless score #xprq game.Opts matches ..1 unless score @s TCHA.cost <= @p[tag=TECHA.try,gamemode=!creative] TCHA.plxp run function technical_anvil:interaction/clic_combine/failed
# Xp settings don't make sense
execute if entity @s[tag=CanCombine] if score #xprq game.Opts matches ..1 as @p[tag=TECHA.try] run function technical_anvil:interaction/clic_combine/fail_settings


#For creative (always succeed)
execute if entity @s[tag=CanCombine] unless score #xprq game.Opts matches ..1 if entity @p[tag=TECHA.try,gamemode=creative] run function technical_anvil:interaction/clic_combine/succeed

tag @s remove CanCombine

function technical_anvil:menu/change_item/deactivate_slots