###########################################
# This function takes 4 arguments:
# table_tier
# tag_type
# on_fun
# off_fun
###########################################

# It follows a logic, if the entity (armor stand) doesn't have a tag (tag_type) with the marker entity with a 
# specific tag (table_tier), it runs a function (on_fun)
# it also checks the opposite, to remove the tag calling a function (off_fun)


# Show the lapis item if the enchanting table has the correct tier tag
$execute as @s[tag=!teplus.$(tag_type)] positioned ~ ~1 ~ if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=teplus.$(table_tier),distance=...5] run function teplus:entity/armor_stand/table_rotate/update/$(on_fun)

# Remove the lapis item if the enchanting table doesn't haves the correct tier tag
$execute as @s[tag=teplus.$(tag_type)] positioned ~ ~1 ~ if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=!teplus.$(table_tier),distance=...5] run function teplus:entity/armor_stand/table_rotate/update/$(off_fun)