#Change the item into a book
data modify entity @s Item.id set value "minecraft:enchanted_book"

#Give the correct Lore to the enchanted book
data modify entity @s[nbt={Item:{tag:{StoredCustomEnchantments:[{id:"MarineGrace",lvl:1}]}}}] Item.tag.display.Lore insert 0 value "{\"translate\":\"Marine Grace I\",\"color\":\"gray\",\"italic\":false}"
data modify entity @s[nbt={Item:{tag:{StoredCustomEnchantments:[{id:"MarineGrace",lvl:2}]}}}] Item.tag.display.Lore insert 0 value "{\"translate\":\"Marine Grace II\",\"color\":\"gray\",\"italic\":false}"

data modify entity @s[nbt={Item:{tag:{StoredCustomEnchantments:[{id:"Waterjet",lvl:1}]}}}] Item.tag.display.Lore insert 0 value "{\"translate\":\"Waterjet\",\"color\":\"gray\",\"italic\":false}"

data modify entity @s[nbt={Item:{tag:{StoredCustomEnchantments:[{id:"Splatter",lvl:1}]}}}] Item.tag.display.Lore insert 0 value "[{\"text\":\"<≈≈| \",\"color\":\"dark_aqua\",\"bold\":true,\"italic\":false},{\"translate\":\"Splatter I\",\"color\":\"aqua\",\"bold\":false,\"italic\":false},{\"text\":\" |≈≈>\",\"color\":\"dark_aqua\",\"bold\":true,\"italic\":false}]"
data modify entity @s[nbt={Item:{tag:{StoredCustomEnchantments:[{id:"Splatter",lvl:2}]}}}] Item.tag.display.Lore insert 0 value "[{\"text\":\"<≈≈| \",\"color\":\"dark_aqua\",\"bold\":true,\"italic\":false},{\"translate\":\"Splatter II\",\"color\":\"aqua\",\"bold\":false,\"italic\":false},{\"text\":\" |≈≈>\",\"color\":\"dark_aqua\",\"bold\":true,\"italic\":false}]"
data modify entity @s[nbt={Item:{tag:{StoredCustomEnchantments:[{id:"Splatter",lvl:3}]}}}] Item.tag.display.Lore insert 0 value "[{\"text\":\"<≈≈| \",\"color\":\"dark_aqua\",\"bold\":true,\"italic\":false},{\"translate\":\"Splatter III\",\"color\":\"aqua\",\"bold\":false,\"italic\":false},{\"text\":\" |≈≈>\",\"color\":\"dark_aqua\",\"bold\":true,\"italic\":false}]"

#Add the seccond Lore
data modify entity @s[nbt={Item:{tag:{StoredCustomEnchantments:[{id:"MarineGrace"}]}}}] Item.tag.display.Lore append value "{\"translate\":\"► Trident\",\"color\":\"red\"}"
data modify entity @s[nbt={Item:{tag:{StoredCustomEnchantments:[{id:"Waterjet"}]}}}] Item.tag.display.Lore append value "{\"translate\":\"► Trident\",\"color\":\"red\"}"
data modify entity @s[nbt={Item:{tag:{StoredCustomEnchantments:[{id:"Splatter"}]}}}] Item.tag.display.Lore append value "{\"translate\":\"► Fishing Rod\",\"color\":\"green\"}"


#Particles and Sounds
particle bubble ~ ~.5 ~ .5 1 .5 1 100 force
particle bubble ~ ~.5 ~ .5 1 .5 1 100 force
particle bubble ~ ~.5 ~ .5 1 .5 2 150 force

playsound entity.zombie.converted_to_drowned ambient @a[distance=..25] ~ ~ ~ 5 1.5
playsound entity.zombie.converted_to_drowned ambient @a[distance=..25] ~ ~ ~ 5 1.5
