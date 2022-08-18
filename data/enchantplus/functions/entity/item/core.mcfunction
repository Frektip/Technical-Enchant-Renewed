execute if entity @s[nbt={Item:{id:"minecraft:writable_book"}}] if block ~ ~-.5 ~ minecraft:enchanting_table run function enchantplus:give/guide_book

execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{}}}},nbt={Age:0s}] run function enchantplus:entity/item/enchanted_block


tag @s[nbt=!{Item:{id:"minecraft:writable_book"}}] add teplus.item_checked