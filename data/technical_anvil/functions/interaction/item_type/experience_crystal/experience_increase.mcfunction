tag @s remove ComError

#Merge the 2 xp amounts
execute store result score #teplus.xpcrystal_val1 teplus.data run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Content.Value[0]

execute store result score #teplus.xpcrystal_val2 teplus.data run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].Count
scoreboard players operation #teplus.xpcrystal_val2 teplus.data *= #7const teplus.data


scoreboard players operation #teplus.xpcrystal_val1 teplus.data += #teplus.xpcrystal_val2 teplus.data
execute if score #teplus.xpcrystal_val1 teplus.data >= @s TCHA.Section2 run scoreboard players operation #teplus.xpcrystal_val1 teplus.data = @s TCHA.Section2


#Apply the changes to the item
execute store result storage teplus:tech_anvil.ui ResultItem.tag.Content.Value[0] int 1 run scoreboard players get #teplus.xpcrystal_val1 teplus.data

execute store result score #teplus.xpcrystal_newmax teplus.data run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Content.Value[1]

execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Content.Tier


tag @s add CExpcrst
tag @s add Noxpcost