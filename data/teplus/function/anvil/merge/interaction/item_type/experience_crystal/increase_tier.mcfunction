# Remove error tag
tag @s remove teplus.anvil.merge.error

# Increase the Tier by one
scoreboard players add @s teplus.anvil.inp1 1

# Increase the current max value by +250
execute store result score #teplus.xpcrystal_newmax teplus.data run data get entity @s Items[{Slot:2b}].components.minecraft:custom_data.teplus.Content.Value[1]

scoreboard players add #teplus.xpcrystal_newmax teplus.data 250

# Merge the 2 xp amounts
execute store result score #teplus.xpcrystal_val1 teplus.data run data get entity @s Items[{Slot:2b}].components.minecraft:custom_data.teplus.Content.Value[0]

execute store result score #teplus.xpcrystal_val2 teplus.data run data get entity @s Items[{Slot:6b}].components.minecraft:custom_data.teplus.Content.Value[0]

scoreboard players operation #teplus.xpcrystal_val1 teplus.data += #teplus.xpcrystal_val2 teplus.data
execute if score #teplus.xpcrystal_val1 teplus.data >= #teplus.xpcrystal_newmax teplus.data run scoreboard players operation #teplus.xpcrystal_val1 teplus.data = #teplus.xpcrystal_newmax teplus.data


# Apply the changes to the Result item storage
execute store result storage teplus:updates TAM.Output.Result.components.minecraft:custom_data.teplus.Content.Tier int 1 run scoreboard players get @s teplus.anvil.inp1
execute store result storage teplus:updates TAM.Output.Result.components.minecraft:custom_data.teplus.Content.Value[0] int 1 run scoreboard players get #teplus.xpcrystal_val1 teplus.data
execute store result storage teplus:updates TAM.Output.Result.components.minecraft:custom_data.teplus.Content.Value[1] int 1 run scoreboard players get #teplus.xpcrystal_newmax teplus.data

# Add a tag to let the system know that the combination has no cost
tag @s add teplus.anvil.no_combine_cost