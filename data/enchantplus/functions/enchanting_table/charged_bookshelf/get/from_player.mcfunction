#Only not charged bookshelfs are transformed
execute if entity @s[nbt=!{Item:{tag:{TeplusChBf:1b}}}] at @s if block ~ ~-0.5 ~ enchanting_table run function enchantplus:enchanting_table/charged_bookshelf/get/check_lapis