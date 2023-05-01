scoreboard players operation $Remove TCHA.plxp = @s TCHA.plxp
scoreboard players operation $Remove TCHA.plxp /= $Power TCHA.plxp

execute if score $Remove TCHA.plxp matches 1.. run scoreboard players operation $Power TCHA.plxp *= #10const teplus.data

execute if score $Remove TCHA.plxp matches 1.. run function technical_anvil:interaction/clic_combine/get_10_power