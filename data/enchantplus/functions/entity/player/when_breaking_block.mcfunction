scoreboard players set #break teplus.data 0
scoreboard players operation #break teplus.data = @s[scores={teplus.pick=1..}] teplus.pick
scoreboard players operation #break teplus.data = @s[scores={teplus.shov=1..}] teplus.shov
scoreboard players operation #break teplus.data = @s[scores={teplus.axe=1..}] teplus.axe

execute if score #break teplus.data matches 1.. run function enchantplus:entity/player/get_rotation
execute if score #break teplus.data matches 1.. run function #enchantplus:break_block/get_enchants
execute if score #break teplus.data matches 1.. as @e[type=item,tag=!teplus.ench_block,sort=nearest,limit=1,nbt={Age:1s}] run function enchantplus:entity/item/tag_item/init