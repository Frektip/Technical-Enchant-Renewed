data modify entity @s Item.id set value "minecraft:enchanted_book"

#Insert Water Related Enchantments into the book
scoreboard players set $min random 0
scoreboard players set $max random 9
function enchantplus:random_uniform


execute if score #mrgc Enchopts matches 0 if score $out random matches 0..1 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"MarineGrace",lvl:1}

execute if score #mrgc Enchopts matches 0 if score $out random matches 2 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"MarineGrace",lvl:2}

execute if score #wtjt Enchopts matches 0 if score $out random matches 3 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"Waterjet",lvl:1}

execute if score #sptr Enchopts matches 0 if score $out random matches 4..6 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"Splatter",lvl:1}

execute if score #sptr Enchopts matches 0 if score $out random matches 7..8 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"Splatter",lvl:2}

execute if score #sptr Enchopts matches 0 if score $out random matches 9 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"Splatter",lvl:3}



#Change the lore
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

playsound entity.zombie.converted_to_drowned ambient @a[distance=..25] ~ ~ ~ 5 1.5
playsound entity.zombie.converted_to_drowned ambient @a[distance=..25] ~ ~ ~ 5 1.5
