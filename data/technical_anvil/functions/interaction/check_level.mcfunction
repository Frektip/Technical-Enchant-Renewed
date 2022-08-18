execute if score @s tep.plid = @p tep.plid run tag @p add TECHA.try

execute as @p[tag=TECHA.try] store result score @p TCHA.plxp run xp query @s levels

execute if entity @s[tag=CanCombine] if score #xprq game.Opts <= @p[tag=TECHA.try,gamemode=!creative] TCHA.plxp run function technical_anvil:interaction/combine_succeed
execute if entity @s[tag=CanCombine] unless score #xprq game.Opts <= @p[tag=TECHA.try,gamemode=!creative] TCHA.plxp run function technical_anvil:interaction/combine_failed

execute if entity @s[tag=CanCombine] if entity @p[tag=TECHA.try,gamemode=creative] run function technical_anvil:interaction/combine_succeed

tag @s remove CanCombine

data modify entity @s Items[{Slot:13b}].tag.SectionChange1 set value {Slot:2b,id:"minecraft:air"}
data modify entity @s Items[{Slot:13b}].tag.SectionChange2 set value {Slot:6b,id:"minecraft:air"}