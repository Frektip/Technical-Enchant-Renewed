scoreboard players set #break teplus.data 0
scoreboard players operation #break teplus.data = @s[scores={teplus.pick=1..}] teplus.pick
scoreboard players operation #break teplus.data = @s[scores={teplus.shov=1..}] teplus.shov
scoreboard players operation #break teplus.data = @s[scores={teplus.axe=1..}] teplus.axe
scoreboard players operation #break teplus.data = @s[scores={teplus.hoe=1..}] teplus.hoe

execute if score #break teplus.data matches 1.. run function enchantplus:entity/player/get_rotation
execute if score #break teplus.data matches 1.. run function #enchantplus:break_block/get_enchants
execute if score #break teplus.data matches 1.. as @e[type=item,tag=!teplus.ench_block,sort=nearest,limit=1,nbt={Age:1s}] run function enchantplus:entity/item/tag_item/init

#Special case for Scyther
# Because it is not guaranteed that once the player used a hoe,
#  it will drop an item
execute if score #break teplus.data matches 1.. if score #scyther teplus.data matches 1.. unless entity @e[type=item,tag=teplus.item_scyt,tag=!teplus.item_scyt_done,distance=..15] run function enchantplus:result/scyther/no_item