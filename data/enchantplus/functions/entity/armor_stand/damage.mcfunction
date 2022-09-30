#Give to the armor stand the item from the storage 
data modify entity @s HandItems[0] set from storage teplus:item_dura item
#Use an item modifier to set the item without durability left
item modify entity @s weapon.mainhand enchantplus:lose_dura
#Set to an scoreboard the max value from the item
execute store result score .maxdmg tep.rc run data get entity @s HandItems[0].tag.Damage
#kill the armor stand
kill @s