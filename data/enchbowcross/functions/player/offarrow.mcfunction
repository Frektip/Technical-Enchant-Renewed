#Check if the player has another bow/crossbow item WITHOUT custom enchantments
# in their mainhand, that way we prevent offhand abuse

#To achieve this, use a predicate:
# -if is true then set teplus.arrow score to 0
# -if is false then run another function to store the values from the offhand

#If using a complement, overwrite the predicate while keeping
# original vanilla bow and crossbow
scoreboard players set #nmlhand teplus.data 0
execute store success score #nmlhand teplus.data if predicate enchbowcross:mainhand_normal

#After detecting the mainhand correctly
execute if score #nmlhand teplus.data matches 1 run scoreboard players set @s teplus.arrow 0
execute if score #nmlhand teplus.data matches 0 run function #enchbowcross:custom_arrow/offhand_arrow
