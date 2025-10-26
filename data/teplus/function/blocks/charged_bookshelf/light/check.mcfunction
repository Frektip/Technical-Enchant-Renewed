##########################################################
#                        @CREDITS                        #
# The following light update system was made by KawaMood #
# TE+ took some parts to match its needs                 #
##########################################################

# Check if the current position is blocked by a solid block (light/0) and if not all 6 sides of the block are occupied
# Depending on the direction, send an argument

# From bottom
execute if entity @s[tag=teplus.light_source.bottom] positioned ~ ~-1 ~ if predicate teplus:light/0 at @s unless predicate teplus:light/0_surrounded align xyz run return run function teplus:blocks/charged_bookshelf/light/change {move_from_direction:"bottom"}

# From top
execute if entity @s[tag=teplus.light_source.top] positioned ~ ~1 ~ if predicate teplus:light/0 at @s unless predicate teplus:light/0_surrounded align xyz run return run function teplus:blocks/charged_bookshelf/light/change {move_from_direction:"top"}

# From west
execute if entity @s[tag=teplus.light_source.west] positioned ~-1 ~ ~ if predicate teplus:light/0 at @s unless predicate teplus:light/0_surrounded align xyz run return run function teplus:blocks/charged_bookshelf/light/change {move_from_direction:"west"}

# From east
execute if entity @s[tag=teplus.light_source.east] positioned ~1 ~ ~ if predicate teplus:light/0 at @s unless predicate teplus:light/0_surrounded align xyz run return run function teplus:blocks/charged_bookshelf/light/change {move_from_direction:"east"}

# From north
execute if entity @s[tag=teplus.light_source.north] positioned ~ ~ ~-1 if predicate teplus:light/0 at @s unless predicate teplus:light/0_surrounded align xyz run return run function teplus:blocks/charged_bookshelf/light/change {move_from_direction:"north"}

# From south
execute if entity @s[tag=teplus.light_source.south] positioned ~ ~ ~1 if predicate teplus:light/0 at @s unless predicate teplus:light/0_surrounded align xyz run return run function teplus:blocks/charged_bookshelf/light/change {move_from_direction:"south"}