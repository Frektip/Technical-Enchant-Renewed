#If the item reaches 0 durability
execute if predicate enchantplus:zero_soul run playsound minecraft:entity.item.break master @s ~ ~ ~ 2 1
execute if predicate enchantplus:zero_soul run item replace entity @s weapon.offhand with minecraft:air

#Material type and random chance to lose durability
# All hoes lose 6 durability each time the predicate is true, however
# the lowest durability, the less chance to lose durability (this is to balance things)
execute if predicate enchantplus:random_chance/25 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:netherite_hoe"}]}] run item modify entity @s weapon.offhand enchantplus:lose_soul_type/netherite
execute if predicate enchantplus:random_chance/20 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:diamond_hoe"}]}] run item modify entity @s weapon.offhand enchantplus:lose_soul_type/diamond
execute if predicate enchantplus:random_chance/15 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_hoe"}]}] run item modify entity @s weapon.offhand enchantplus:lose_soul_type/iron
execute if predicate enchantplus:random_chance/5 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_hoe"}]}] run item modify entity @s weapon.offhand enchantplus:lose_soul_type/low
execute if predicate enchantplus:random_chance/10 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:stone_hoe"}]}] run item modify entity @s weapon.offhand enchantplus:lose_soul_type/low
execute if predicate enchantplus:random_chance/10 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_hoe"}]}] run item modify entity @s weapon.offhand enchantplus:lose_soul_type/low
