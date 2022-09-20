##=====================GET XP OUTPUT SYSTEM=====================##
### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Item without Custom Curses detected","color":"gray","italic":true,"bold":false}]

#1.Get custom enchantments quantity
execute store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments
scoreboard players operation $tep.diench teplus.diench = @s teplus.diench

#2. Get vanilla enchantments quantity
#   -Store the result if the item at least has one vanilla enchantment
#    and not just the vanilla glint
execute if data entity @s Item.tag.Enchantments[0].id store result score @s teplus.diench run data get entity @s Item.tag.Enchantments
scoreboard players operation $tep.diench teplus.diench += @s teplus.diench

#2.1 Remove 1 scoreboard value if the item has vanilla curses (You can't remove curses)
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse"}] run scoreboard players remove $tep.diench teplus.diench 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players remove $tep.diench teplus.diench 1

#3. Add more value if the item has level enchantments (I, II, III, etc...)
#   -Do it for custom and vanilla Curses
function #enchantplus:disenchant/get_levels_custom
function enchantplus:disenchant/reward_xp/get_levels_vanilla

#4. Duplicate the current value (Reason:I think it's the best)
scoreboard players operation $tep.diench teplus.diench *= #2const teplus.data

#5. Store the final value from the scoreboard to a storage
execute store result storage teplus:diench XpReward short 1 run scoreboard players get $tep.diench teplus.diench

### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Setting the xp reward value into an storage","color":"gray","italic":true,"bold":false}]
##==============================================================##




##=====================REMOVE ENCHANTMENTS SYSTEM=====================##

#1. COPY VANILLA ENCHANTMENTS
#   -Keep all the vanilla enchantments in a storage
data modify storage teplus:diench VanillaEnch set from entity @s Item.tag.Enchantments
#   -Remove all the enchantments from the item
data remove entity @s Item.tag.Enchantments
### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Removing Vanilla enchantments","color":"gray","italic":true,"bold":false}]
#   -Run a function to add the curses again
function enchantplus:disenchant/add_vanilla_curse

#2. MAINTAIN OTHER CUSTOM LORE
#   -Keep the original Lore before removing it in a storage
data modify storage teplus:item_lore DienchLore set from entity @s Item.tag.display.Lore
#   -Run a function to remove all Custom Enchantments and Curses related Lore
function #enchantplus:disenchant/remove_custom_lore
#   -Remove all the item's Lore
data remove entity @s Item.tag.display.Lore
#   -In case the Item has anther custom Lore, append it from the "DienchLore" storage
data modify entity @s Item.tag.display.Lore append from storage teplus:item_lore DienchLore[]

### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Disenchant): ","color":"light_purple","bold":false},{"text":"Processing Lore...","color":"gray","italic":true,"bold":false}]
##====================================================================##



##=====================REMOVE REMAINING STUFF=====================##
# REMOVE NBT TAGS:
# RepairCost; CustomArrow; AttributeModifiers,CustomEnchantments

# -If the item had other Attributes they will be gone, it's not worth
#  keeping it like the vanilla curses or the Lore, because it isn't
#  that common to have too many attributes in a single item
data remove entity @s Item.tag.RepairCost
data remove entity @s Item.tag.AttributeModifiers
data remove entity @s Item.tag.CustomArrow
data remove entity @s Item.tag.CustomEnchantments

# Remove the storage that contains the previous Lore and Enchantments
data remove storage teplus:diench VanillaEnch
data remove storage teplus:item_lore DienchLore

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
# Summon other 2 xp orbs with a 70% chance
execute if predicate enchantplus:random_chance/70 run summon experience_orb ~-.1 ~ ~ {Tags:["teplus.diench.orb"]}
execute if predicate enchantplus:random_chance/70 run summon experience_orb ~ ~ ~-.1 {Tags:["teplus.diench.orb"]}
# Change the xp value for each xp orb according to the storage
execute as @e[type=experience_orb,tag=teplus.diench.orb,distance=..1] run data modify entity @s Value set from storage teplus:diench XpReward
# Clear the storage
data remove storage teplus:diench XpReward
#--------------------- Graphical Things ---------------------# 
playsound block.grindstone.use master @a[distance=..10] ~ ~ ~ 100 
particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0.5 10 