#Spin the armor stands only when a player is nearby unless low performance mode is active
tp @s ~ ~ ~ ~10 ~

#Do the animation ONLY for the player that triggered it
scoreboard players operation #predicate tep.plid = @s tep.plid
execute as @e[type=armor_stand,tag=shield1,predicate=enchantplus:is_same_id] run tp @s ^ ^-.5 ^1 ~1 ~
execute as @e[type=armor_stand,tag=shield2,predicate=enchantplus:is_same_id] run tp @s ^ ^-.5 ^-1 ~1 ~
execute as @e[type=armor_stand,tag=shield3,predicate=enchantplus:is_same_id] run tp @s ^1 ^-.5 ^ ~1 ~
execute as @e[type=armor_stand,tag=shield4,predicate=enchantplus:is_same_id] run tp @s ^-1 ^-.5 ^ ~1 ~
