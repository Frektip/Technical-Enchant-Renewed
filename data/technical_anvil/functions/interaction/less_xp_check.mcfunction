###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnv): ","color":"yellow","italic":true,"bold":false},{"text":"Getting levels from the nearest player","color":"gray","italic":true,"bold":false}]

#Look for the player "owner" of the technical anvil
execute if score @s tep.plid = @p tep.plid run tag @p add TECHA.try
#Get the levels from the player
execute as @p[tag=TECHA.try] store result score @p TCHA.plxp run xp query @s levels

#Check conditions before completing the action
# - If the Technical Anvil can combine
# - If the player has at least 1 level

#For Survival
# Xp settings make sense
execute if entity @s[tag=CanCombine] if score @p[tag=TECHA.try,gamemode=!creative] TCHA.plxp matches 1.. run function technical_anvil:interaction/clic_combine/succeed

execute if entity @s[tag=CanCombine] unless score @p[tag=TECHA.try,gamemode=!creative] TCHA.plxp matches 1.. run function technical_anvil:interaction/clic_combine/failed


#For creative (always succeed)
execute if entity @s[tag=CanCombine] if entity @p[tag=TECHA.try,gamemode=creative] run function technical_anvil:interaction/clic_combine/succeed

tag @s remove CanCombine
tag @s remove No.xpcomb

data modify entity @s Items[{Slot:13b}].tag.SectionChange1 set value {Slot:2b,id:"minecraft:air"}
data modify entity @s Items[{Slot:13b}].tag.SectionChange2 set value {Slot:6b,id:"minecraft:air"}