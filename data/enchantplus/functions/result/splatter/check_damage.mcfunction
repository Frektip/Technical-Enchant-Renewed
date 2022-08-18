execute store result score .dmg tep.rc run data get entity @s Inventory[{Slot:-106b}].tag.Damage 
execute if score .dmg tep.rc matches ..64 run item modify entity @s weapon.offhand enchantplus:lose_dura 
execute if score .dmg tep.rc matches 62.. run function enchantplus:result/splatter/clear_rod 
scoreboard players reset .dmg tep.rc 