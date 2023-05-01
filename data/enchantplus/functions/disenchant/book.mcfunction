##=====================GET XP OUTPUT SYSTEM=====================##
### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Item without Custom Curses detected","color":"gray","italic":true,"bold":false}]
#0.Detect if it has a custom curse
tag @s[nbt={Item:{tag:{StoredCustomCurse:[{}]}}}] add has_curse
tag @s add as_book

#1.Store the total amount of custom enchantments and vanilla enchantments
data modify storage teplus:diench Enchantments set value []
data modify storage teplus:diench Enchantments append from entity @s Item.tag.StoredCustomEnchantments[]
data modify storage teplus:diench Enchantments append from entity @s Item.tag.StoredEnchantments[]

#2.Use an scoreboard as a counter for the loop
execute store result score @s teplus.cencnt run data get storage teplus:diench Enchantments
scoreboard players set $tep.diench teplus.diench 0

function enchantplus:disenchant/reward_xp/loop_ench

#3. Store the final value from the scoreboard to a storage
execute store result storage teplus:diench XpReward short 1.75 run scoreboard players get $tep.diench teplus.diench

### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Setting the xp reward value into an storage","color":"gray","italic":true,"bold":false}]
##==============================================================##




##=====================REMOVE ENCHANTMENTS SYSTEM=====================##

#1. COPY VANILLA ENCHANTMENTS
#   -Keep all the vanilla enchantments in a storage
data modify storage teplus:diench VanillaEnch set from entity @s Item.tag.StoredEnchantments
#   -Remove all the enchantments from the item
data remove entity @s Item.tag.StoredEnchantments
### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Removing Vanilla enchantments","color":"gray","italic":true,"bold":false}]
#   -Run a function to add the curses again
data modify entity @s[tag=has_vanishing] Item.tag.StoredEnchantments append value {id:"minecraft:vanishing_curse",lvl:1s}
data modify entity @s[tag=has_binding] Item.tag.StoredEnchantments append value {id:"minecraft:binding_curse",lvl:1s}

#2. MAINTAIN OTHER CUSTOM LORE
data remove entity @s[tag=!has_curse] Item.tag.display
execute if entity @s[tag=has_curse] run function enchantplus:disenchant/update_lore/check

### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Processing Lore...","color":"gray","italic":true,"bold":false}]
##====================================================================##



##=====================REMOVE REMAINING STUFF=====================##
# REMOVE NBT TAGS:
# RepairCost; CustomArrow; AttributeModifiers,StoredCustomEnchantments

# -If the item had other Attributes they will be gone, it's not worth
#  keeping it like the vanilla curses or the Lore, because it isn't
#  that common to have too many attributes in a single item
data remove entity @s Item.tag.RepairCost
data remove entity @s Item.tag.StoredCustomEnchantments

#Change it into a normal book if no custom or vanilla curse are left
data modify entity @s[tag=!has_vanilla_curse,nbt=!{Item:{tag:{StoredCustomCurse:[{}]}}}] Item.id set value "minecraft:book"
data remove entity @s[tag=!has_vanilla_curse,nbt=!{Item:{tag:{StoredCustomCurse:[{}]}}}] Item.tag.CustomModelData

#Update the second Lore line of the custom curse ONLY if there is one
# custom curse left in the book and no other vanilla curse
execute unless data entity @s Item.tag.StoredCustomCurse[1].id unless data entity @s Item.tag.StoredEnchantments[0].id run function #enchantplus:disenchant/one_curse_only

# Remove the storage that contains the previous Lore and Enchantments
data remove storage teplus:diench VanillaEnch
data remove storage teplus:item_lore DienchLore
data remove storage teplus:diench Enchantments
data remove storage teplus:diench Current

### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Removing nbt tags","color":"gray","italic":true,"bold":false}]
##================================================================##



##=====================GIVE XP=====================##
### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Success! ","color":"green","italic":true,"bold":false},{"text":"generating xp orbs as reward","color":"gray","italic":true,"bold":false}]
# Summon xp orbs (4 by default)
summon experience_orb ~ ~ ~ {Tags:["teplus.diench.orb"]}
summon experience_orb ~.1 ~ ~ {Tags:["teplus.diench.orb"]}
summon experience_orb ~ ~ ~.1 {Tags:["teplus.diench.orb"]}
summon experience_orb ~ ~.1 ~ {Tags:["teplus.diench.orb"]}
# Summon other 2 xp orbs with a 70% chance and 50% chance
execute if predicate enchantplus:random_chance/70 run summon experience_orb ~-.1 ~ ~ {Tags:["teplus.diench.orb"]}
execute if predicate enchantplus:random_chance/50 run summon experience_orb ~ ~ ~-.1 {Tags:["teplus.diench.orb"]}
# Change the xp value for each xp orb according to the storage
execute as @e[type=experience_orb,tag=teplus.diench.orb,distance=..1] run data modify entity @s Value set from storage teplus:diench XpReward
# Clear the storage
data remove storage teplus:diench XpReward
#--------------------- Graphical Things ---------------------# 
playsound block.grindstone.use master @a[distance=..10] ~ ~ ~ 100 
particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0.5 10 