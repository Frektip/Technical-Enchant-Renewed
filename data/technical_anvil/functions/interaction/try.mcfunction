execute if entity @s[tag=CanCombine] run function technical_anvil:interaction/xp_calc/get_ench

execute if entity @s[tag=No.xpcomb] run function technical_anvil:interaction/less_xp_check
execute if entity @s[tag=!No.xpcomb] run function technical_anvil:interaction/check_level