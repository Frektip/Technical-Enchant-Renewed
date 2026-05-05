# Check for the drop rates %
execute store result score #drops.out teplus.rng run random value 1..100

execute if score #drops.out teplus.rng <= #drop.rates teplus.game_opts if entity @s[tag=!teplus.drop.can] run function teplus:drops/convert_entity/check_options

tag @s add teplus.drop.try