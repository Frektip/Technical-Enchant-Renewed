summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["teplus.update_ench","teplus.update_attack_speed"],HandItems:[{},{}],DisabledSlots:4144959}

data modify entity @e[type=armor_stand,tag=teplus.update_attack_speed,distance=..1,limit=1] HandItems[0] set from entity @s SelectedItem

data remove entity @e[type=armor_stand,tag=teplus.update_attack_speed,distance=..1,limit=1] HandItems[0].tag.Enchantments[{id:"minecraft:sharpness"}]

item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=teplus.update_attack_speed,distance=..1,limit=1] weapon.mainhand

tellraw @s [{"translate":"You can not have Sharpness and Attack Speed at the same time!!", "color":"red"}]

particle dust_color_transition 1.000 0.302 0.051 2 1.000 0.804 0.412 ~ ~.5 ~ .5 1 .5 0 50 force
playsound entity.zombie_villager.converted ambient @s ~ ~ ~ 10 2