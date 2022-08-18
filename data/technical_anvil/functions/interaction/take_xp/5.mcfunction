xp add @s -5 levels
scoreboard players remove @s TCHA.plxp 5
execute if entity @s[scores={TCHA.plxp=5..}] run function technical_anvil:interaction/take_xp/5
execute unless entity @s[scores={TCHA.plxp=5..}] run tag @s remove TECHA.try