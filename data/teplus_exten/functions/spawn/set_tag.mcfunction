execute if entity @s[tag=!tepspw_cenit] if predicate enchantplus:random_chance/10 unless predicate enchantplus:has_ench/general run function teplus_exten:spawn/modify_items

tag @s add tepspw_gen

function teplus_exten:spawn/clear_tags