#Loop function to remove the correct amount of levels form the player
xp add @s -1 levels
scoreboard players remove @s TCHA.plxp 1
execute if entity @s[scores={TCHA.plxp=1..}] run function technical_anvil:interaction/clic_combine/take_xp
execute unless entity @s[scores={TCHA.plxp=1..}] run tag @s remove TECHA.try

#Grant advancement to the player if in doesn't have it
advancement grant @s[advancements={enchantplus:progress/start/technical_anvil/merging_mode=false}] only enchantplus:progress/start/technical_anvil/merging_mode