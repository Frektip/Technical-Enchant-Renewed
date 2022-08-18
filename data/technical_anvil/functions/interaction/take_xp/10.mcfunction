xp add @s -10 levels
scoreboard players remove @s TCHA.plxp 10
execute if entity @s[scores={TCHA.plxp=10..}] run function technical_anvil:interaction/take_xp/10
execute unless entity @s[scores={TCHA.plxp=10..}] run tag @s remove TECHA.try