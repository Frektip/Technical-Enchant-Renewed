execute if entity @s[tag=Noxpcost] run function technical_anvil:interaction/get_xp_crystal

execute if entity @s[tag=CanCombine,tag=!Noxpcost] run function technical_anvil:interaction/xp_calc/get_ench


execute if entity @s[tag=No.xpcomb] run function technical_anvil:interaction/less_xp_check
execute if entity @s[tag=!No.xpcomb] run function technical_anvil:interaction/check_level