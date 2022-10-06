###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Changing the durability from the player's ","color":"gray","italic":true,"bold":false},{"text":"head","color":"dark_aqua","italic":true,"bold":false}]

##---Copy the current Damage into an storage---##
#Refresh the storage
data modify storage teplus:item_dura item.Damage set value [0,0]
#Set the current damage in the left
data modify storage teplus:item_dura item.Damage[0] set from entity @s[type=player] Inventory[{Slot:103b}].tag.Damage
data modify storage teplus:item_dura item.Damage[0] set from entity @s[type=!player] ArmorItems[3].tag.Damage
#Damage the item completely and get it's max value in the right
item modify entity @s armor.head enchantplus:lose_dura
data modify storage teplus:item_dura item.Damage[1] set from entity @s[type=player] Inventory[{Slot:103b}].tag.Damage
data modify storage teplus:item_dura item.Damage[1] set from entity @s[type=!player] ArmorItems[3].tag.Damage

##---Scoreboard calculations!---##
#Get the "Damage value from the storage"
execute store result score .tempdmg tep.rc run data get storage teplus:item_dura item.Damage[0]
execute store result score .maxdmg tep.rc run data get storage teplus:item_dura item.Damage[1]
#Add more damage from "#durability teplus.data" score
#Asign the new value to the data storage
execute store result storage teplus:item_dura item.Damage[0] int 1 run scoreboard players operation .tempdmg tep.rc += #durability teplus.data

##---Remove/Update the item---##
#If the Damage score is less than the max score, copy the new nbt from
# the storage to the player
execute if score .tempdmg tep.rc < .maxdmg tep.rc run item modify entity @s armor.head enchantplus:copy_damage

#If the Damage score exceeds the max score, clear the item
# Do it for certain custom enchantments
execute if score .tempdmg tep.rc >= .maxdmg tep.rc run item replace entity @s armor.head with air
execute if score .tempdmg tep.rc >= .maxdmg tep.rc run playsound entity.item.break master @a ~ ~ ~ 2 1