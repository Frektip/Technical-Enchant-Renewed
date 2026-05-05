# Summon a dummy Armor stand
# This armor stand will generate the book that is going to be added
summon armor_stand ~.5 ~ ~.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["teplus.loot_gen"],DisabledSlots:4144959,equipment:{mainhand:{id:"minecraft:enchanted_book",count:1}}}

execute as @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,limit=1] run function teplus:chests/insert_book/select_enchantment

# Particles & sound
particle minecraft:enchant ~.5 ~.5 ~.5 0.25 0.3 0.25 0.6 150 force @a[distance=..10]
playsound minecraft:block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 1.6

# Do repeat it in case is necessary
scoreboard players remove #chst.try teplus.data 1
execute if score #chst.try teplus.data matches 1.. run function teplus:chests/insert_book/init