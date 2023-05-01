#Loop function to remove the correct amount of levels form the player

#Remove levels by power of 10's
scoreboard players operation $Power TCHA.plxp = #1const teplus.data
scoreboard players operation $Remove TCHA.plxp = @s TCHA.plxp
function technical_anvil:interaction/clic_combine/get_10_power
scoreboard players operation $Power TCHA.plxp /= #10const teplus.data

#Remove the xp levels according to the $Power
execute if score $Power TCHA.plxp matches 1.. run function technical_anvil:interaction/clic_combine/reduce_by/1

execute if entity @s[scores={TCHA.plxp=1..}] run function technical_anvil:interaction/clic_combine/take_xp
execute unless entity @s[scores={TCHA.plxp=1..}] run tag @s remove TECHA.try

#Grant advancement to the player if in doesn't have it
advancement grant @s[advancements={enchantplus:progress/start/technical_anvil/merging_mode=false}] only enchantplus:progress/start/technical_anvil/merging_mode