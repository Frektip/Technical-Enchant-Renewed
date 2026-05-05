# Remove error tag
tag @s remove teplus.anvil.merge.error

# Merge the 2 xp amounts
execute store result score #teplus.xpcrystal_val1 teplus.data run data get entity @s Items[{Slot:2b}].components.minecraft:custom_data.teplus.Content.Value[0]

# Every experience bottle adds 7 experience points to the crystal
execute store result score #teplus.xpcrystal_val2 teplus.data run data get entity @s Items[{Slot:6b}].count
scoreboard players operation #teplus.xpcrystal_val2 teplus.data *= #7const teplus.data

# Update the new current value in '#teplus.xpcrystal_val1' score
#  if it exceeds the max value, set it to the max value (stored in the entity's 'teplus.anvil.inp2' score)
scoreboard players operation #teplus.xpcrystal_val1 teplus.data += #teplus.xpcrystal_val2 teplus.data
execute if score #teplus.xpcrystal_val1 teplus.data >= @s teplus.anvil.inp2 run scoreboard players operation #teplus.xpcrystal_val1 teplus.data = @s teplus.anvil.inp2

# Apply the changes to the Result item storage
execute store result storage teplus:updates TAM.Output.Result.components.minecraft:custom_data.teplus.Content.Value[0] int 1 run scoreboard players get #teplus.xpcrystal_val1 teplus.data

# Update scoreboard values (to update de Lore of the result item)
execute store result score #teplus.xpcrystal_newmax teplus.data run data get entity @s Items[{Slot:2b}].components.minecraft:custom_data.teplus.Content.Value[1]
execute store result score @s teplus.anvil.inp1 run data get entity @s Items[{Slot:2b}].components.minecraft:custom_data.teplus.Content.Tier

# Add a tag to let the system know that the combination has no cost
tag @s add teplus.anvil.no_combine_cost