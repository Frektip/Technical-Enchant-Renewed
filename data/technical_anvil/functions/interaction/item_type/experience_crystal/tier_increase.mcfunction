tag @s remove ComError

#Increase the Tier by one
scoreboard players add @s TCHA.Section1 1

#Increase the current max value by +250
execute store result score #teplus.xpcrystal_newmax teplus.data run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Content.Value[1]

scoreboard players add #teplus.xpcrystal_newmax teplus.data 250

#Merge the 2 xp amounts
execute store result score #teplus.xpcrystal_val1 teplus.data run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Content.Value[0]

execute store result score #teplus.xpcrystal_val2 teplus.data run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.Content.Value[0]

scoreboard players operation #teplus.xpcrystal_val1 teplus.data += #teplus.xpcrystal_val2 teplus.data
execute if score #teplus.xpcrystal_val1 teplus.data >= #teplus.xpcrystal_newmax teplus.data run scoreboard players operation #teplus.xpcrystal_val1 teplus.data = #teplus.xpcrystal_newmax teplus.data


#Apply the changes to the item
execute store result storage teplus:tech_anvil.ui ResultItem.tag.Content.Tier int 1 run scoreboard players get @s TCHA.Section1
execute store result storage teplus:tech_anvil.ui ResultItem.tag.Content.Value[1] int 1 run scoreboard players get #teplus.xpcrystal_newmax teplus.data
execute store result storage teplus:tech_anvil.ui ResultItem.tag.Content.Value[0] int 1 run scoreboard players get #teplus.xpcrystal_val1 teplus.data

tag @s add CExpcrst
tag @s add Noxpcost