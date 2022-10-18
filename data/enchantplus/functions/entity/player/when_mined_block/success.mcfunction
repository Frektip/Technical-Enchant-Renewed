function enchantplus:entity/player/get_rotation
function #enchantplus:break_block/get_enchants
execute as @e[type=item,tag=!teplus.ench_block,sort=nearest,limit=1,nbt={Age:0s}] run function enchantplus:entity/item/tag_item/init

#Special case for Scyther
# Because it is not guaranteed that once the player used a hoe,
#  it will drop an item
execute if score #scyther teplus.data matches 1.. unless entity @e[type=item,tag=teplus.item_scyt,tag=!teplus.item_scyt_done,distance=..15] run function enchantplus:result/scyther/no_item