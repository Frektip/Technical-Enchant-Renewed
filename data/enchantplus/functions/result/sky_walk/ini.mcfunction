#The enchantment doesn't trigger if the player have the elytra on
execute unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run function enchantplus:result/sky_walk/check 
