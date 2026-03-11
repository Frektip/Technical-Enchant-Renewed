#-----------------------------------------------------------------------------------------------------------------------------------#
# @Context: There are two items on the inputs of the Technical Anvil & we're trying to add one custom enchantment
#   For this, we use thefollowing @params:
#    - {ench}: is the custom enchantment id, usually with a namespace ("namespace:enchantment")
#    - {score}: is the scoreboard name to track the max enchantment level. IT MUST BE REGISTERED IN THE SCOREBOARD: 'teplus.maxlvl'
#-----------------------------------------------------------------------------------------------------------------------------------#

# Remove 'teplus.anvil.merge.error' tag, because is a compatible enchantment
tag @s remove teplus.anvil.merge.error

#---------GET LEVELS OF BOTH SECTIONS---------#
# -teplus.anvil.output_book = the output is a book, seach for stored_enchantments in input slot 6b
# -teplus.anvil.output_item = the output is an item, seach for enchantments in input slot 6b
$execute store result score @s[tag=teplus.anvil.output_book] teplus.anvil.inp1 run data get entity @s Items[{Slot:2b}].components.minecraft:stored_enchantments.$(ench)
$execute store result score @s[tag=teplus.anvil.output_item] teplus.anvil.inp1 run data get entity @s Items[{Slot:2b}].components.minecraft:enchantments.$(ench)

# If it has the tag "teplus.anvil.IsSameItem" means that the other item is the same one as the one in Slot:2b.
# - !teplus.anvil.IsSameItem = book nbt => stored_enchantments
# - teplus.anvil.IsSameItem = item nbt => enchantments
$execute store result score @s[tag=!teplus.anvil.IsSameItem] teplus.anvil.inp2 run data get entity @s Items[{Slot:6b}].components.minecraft:stored_enchantments.$(ench)
$execute store result score @s[tag=teplus.anvil.IsSameItem] teplus.anvil.inp2 run data get entity @s Items[{Slot:6b}].components.minecraft:enchantments.$(ench)

#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the max level limit for this enchatment
$execute if score @s teplus.anvil.inp1 < $(score) teplus.maxlvl if score @s teplus.anvil.inp2 = @s teplus.anvil.inp1 run scoreboard players add @s teplus.anvil.inp1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s teplus.anvil.inp2 > @s teplus.anvil.inp1 run scoreboard players operation @s teplus.anvil.inp1 = @s teplus.anvil.inp2
#-------ADD ENCHANTMENT IF RESULT ITEM DOESN'T HAVE IT YET-------#
$execute if entity @s[tag=teplus.anvil.output_book] unless data storage teplus:updates TAM.Output.Result.components.minecraft:stored_enchantments.$(ench) run data modify storage teplus:updates TAM.Output.Result.components.minecraft:stored_enchantments merge value {"$(ench)":1}
$execute if entity @s[tag=teplus.anvil.output_item] unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.$(ench) run data modify storage teplus:updates TAM.Output.Result.components.minecraft:enchantments merge value {"$(ench)":1}
#--------SET THE NEW ENCHANTMENT LEVEL--------#
$execute if entity @s[tag=teplus.anvil.output_book] store result storage teplus:updates TAM.Output.Result.components.minecraft:stored_enchantments.$(ench) int 1 run scoreboard players get @s teplus.anvil.inp1
$execute if entity @s[tag=teplus.anvil.output_item] store result storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.$(ench) int 1 run scoreboard players get @s teplus.anvil.inp1

# Tag the chest minecart to update the output item in the UI
tag @s[tag=teplus.anvil.output_item] add teplus.anvil.apply_on_item
tag @s[tag=teplus.anvil.output_book] add teplus.anvil.apply_on_book