##Run a function to see if it has compatible enchantments
scoreboard players set #held.correct teplus.data 0
execute if score #held.correct teplus.data matches 0 store success score #held.correct teplus.data run execute if predicate enchantplus:held_item/have_boots

##Give error message in case the held item isn't the correct one
execute if score #held.correct teplus.data matches 0 run tellraw @s [{"text":"\n\n\n"},{"translate":"Error! ","color":"dark_red","bold":true},{"translate":"You can't add this enchantment to this item","color":"red","bold":false},{"text":"\n\n\n"}]
#-------------------------------------------------------------------------------#

##Store the original value in the storage
execute if score #held.correct teplus.data matches 1 run data modify storage teplus:heldench Mainhand set from entity @s SelectedItem

##Summon an armor stand and tag the player if is holding the right item
execute if score #held.correct teplus.data matches 1 run tag @s add teplus.heldench
execute if score #held.correct teplus.data matches 1 run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["teplus.held_ench"],HandItems:[{},{}],DisabledSlots:4144959}
#-------------------------------------------------------------------------------#


##FIRST check if the item already has the max level for this enchantment
#Get the current level
execute store result score #held.lvl teplus.data run data get storage teplus:heldench Mainhand.tag.CustomEnchantments[{id:"Dasher"}].lvl

#Compare it to the main scoreboard Config
# First check if it is equal or greater than the current max level limit
execute if score #held.lvl teplus.data >= #dasher teplus.maxlvl run tag @s add teplus.heldench_error

#If not, then keep adding one level to it
execute if score #held.lvl teplus.data < #dasher teplus.maxlvl run scoreboard players add #held.lvl teplus.data 1

#In case it has reached the max level limit
execute if entity @s[tag=teplus.heldench_error] run tag @s remove teplus.heldench
execute if entity @s[tag=teplus.heldench_error] run tellraw @s [{"text":"\n\n\n"},{"translate":"Error! ","color":"dark_red","bold":true},{"translate":"This enchantment is already present in this item","color":"red","bold":false},{"text":"\n\n\n"}]
#-------------------------------------------------------------------------------#


##Proceed with the enchanting ONLY if the player has "teplus.heldench" tag
##and if it doesn't have this enchantment already

#1.- Check if it doesn't have the enchant glint
execute if entity @s[tag=teplus.heldench] unless data storage teplus:heldench Mainhand.tag.Enchantments run data modify storage teplus:heldench Mainhand.tag.Enchantments append value {}

#2.- Check if the item doesn't have this enchantment previously
execute if entity @s[tag=teplus.heldench] unless data storage teplus:heldench Mainhand.tag.CustomEnchantments[{id:"Dasher"}] run data modify storage teplus:heldench Mainhand.tag.CustomEnchantments append value {id:"Dasher",lvl:1}

#2.1.- Add the respective level to it
execute if entity @s[tag=teplus.heldench] store result storage teplus:heldench Mainhand.tag.CustomEnchantments[{id:"Dasher"}].lvl int 1 run scoreboard players get #held.lvl teplus.data

#3.- Give to the dummy armor stand the current Storage nbt
execute if entity @s[tag=teplus.heldench] run data modify entity @e[type=armor_stand,tag=teplus.held_ench,distance=..1,limit=1] HandItems[0] set from storage teplus:heldench Mainhand

#4.- Update the Lore based on the the dummy armor stand
execute if entity @s[tag=teplus.heldench] as @e[type=armor_stand,tag=teplus.held_ench,distance=..1,limit=1] run function enchantplus:heldenchant/helpers/set_lore/init

#5.- Give to the player the final result of the item
execute if entity @s[tag=teplus.heldench] run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=teplus.held_ench,distance=..1,limit=1] weapon.mainhand
#-------------------------------------------------------------------------------#


##Kill the armor stand, remove the data storage and remove player tags
kill @e[tag=teplus.held_ench,distance=..5]
data remove storage teplus:heldench Mainhand
tag @s remove teplus.heldench
tag @s remove teplus.heldench_error

