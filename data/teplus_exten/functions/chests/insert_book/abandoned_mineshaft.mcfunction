#Summon a dummy Armor stand
# This armor stand will generate the book that is going to be added
# to the chest. The armor stand has different tags:
#-teplus.loot_gen: main tag to get it
#-tepxc.strong/average/low: what enchantments it can get from the main list
#-tepxc.<structure>: tag that will diferentieate the structure type

summon armor_stand ~.5 ~ ~.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["teplus.loot_gen","tepxc.strong","tepxc.average","tepxc.low","tepxc.abandoned_mineshaft"],DisabledSlots:4144959,HandItems:[{id:"minecraft:enchanted_book",Count:1b},{}]}

execute as @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,limit=1] run function teplus_exten:chests/create_loot/define

#Randomly add the book to the chest
scoreboard players set $min random 0
scoreboard players set $max random 26
function enchantplus:random_uniform

execute if score $out random matches 0 run item replace entity @s container.0 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 1 run item replace entity @s container.1 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 2 run item replace entity @s container.2 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 3 run item replace entity @s container.3 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 4 run item replace entity @s container.4 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 5 run item replace entity @s container.5 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 6 run item replace entity @s container.6 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 7 run item replace entity @s container.7 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 8 run item replace entity @s container.8 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 9 run item replace entity @s container.9 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 10 run item replace entity @s container.10 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 11 run item replace entity @s container.11 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 12 run item replace entity @s container.12 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 13 run item replace entity @s container.13 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 14 run item replace entity @s container.14 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 15 run item replace entity @s container.15 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 16 run item replace entity @s container.16 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 17 run item replace entity @s container.17 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 18 run item replace entity @s container.18 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 19 run item replace entity @s container.19 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 20 run item replace entity @s container.20 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 21 run item replace entity @s container.21 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 22 run item replace entity @s container.22 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 23 run item replace entity @s container.23 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 24 run item replace entity @s container.24 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 25 run item replace entity @s container.25 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand
execute if score $out random matches 26 run item replace entity @s container.26 from entity @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,sort=nearest,limit=1] weapon.mainhand

kill @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5]