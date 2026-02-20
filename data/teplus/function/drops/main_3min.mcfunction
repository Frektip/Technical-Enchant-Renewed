execute as @e[type=!#teplus:ignore/for_drops,tag=!teplus.drop.try,limit=1] unless data entity @s CustomName at @s run function teplus:drops/convert_entity/try_tag

# Run this function every 3 minutes
schedule function teplus:drops/main_3min 180s