##---Copy the Item from the offhand into an storage---##
data remove storage teplus:item_dura item
data modify storage teplus:item_dura item set from entity @s SelectedItem

#Summon a temporal armor stand - Use it to determine
# the max durability value from the item
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Tags:["teplus.armor_stand","teplus.damage"],DisabledSlots:4144959}

##---Scoreboard calculations!---##
#Get the "Damage value from the storage"
execute store result score .tempdmg tep.rc run data get storage teplus:item_dura item.tag.Damage
#Add more damage from "#durability teplus.data" score
scoreboard players operation .tempdmg tep.rc += #durability teplus.data
#Asign the new value to the data storage
execute store result storage teplus:item_dura item.tag.Damage int 1 run scoreboard players get .tempdmg tep.rc

##---Remove/Update the item---##
#If the Damage score exceeds the max score, clear the item
# Do it for certain custom enchantments
execute if score .tempdmg tep.rc >= .maxdmg tep.rc run item replace entity @s weapon.mainhand with air
execute if score .tempdmg tep.rc >= .maxdmg tep.rc run playsound entity.item.break master @a ~ ~ ~ 2 1

#If the Damage score is less than the max score, copy the new nbt from
# the storage to the player
execute if score .tempdmg tep.rc < .maxdmg tep.rc run item modify entity @s weapon.mainhand enchantplus:copy_nbt