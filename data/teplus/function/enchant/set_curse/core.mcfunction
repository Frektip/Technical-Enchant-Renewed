# Prepare the storage that will select the curses
# Addon support
function teplus:enchant/set_curse/get_curses

#Copy into a Temp storage the curses available
data modify storage teplus:loot Temp set from storage teplus:loot Curses

# There is no way to have more than one curse per interaction, so we
#  don't need to clear the storage to not get dupes

#Preapare RNG based on the Temp storage
scoreboard players set $min teplus.rng 0
execute store result score $max teplus.rng run data get storage teplus:loot Temp
execute unless score $max teplus.rng matches ..0 run scoreboard players remove $max teplus.rng 1
function teplus:utils/random/init

#Loop the curses randomly
scoreboard players operation $curse.loop teplus.data = $out teplus.rng
function teplus:enchant/set_curse/loop_curse

tellraw @a[tag=teplus.debug_mode] [{"text":"Target curse: ","color":"#EE639C","bold":false},{"nbt":"Temp[0].id","storage":"teplus:loot","color":"#4dbb9e","italic":true,"bold":false}]

# Add the nbt tag enchant the item based on Temp Storage
# But check first if there is incompatibilities for Items Only
execute if data entity @s[tag=teplus.loot_is_item] Item.components.minecraft:enchantments if data storage teplus:loot Temp[0].Incompatible run function teplus:enchant/check_incompatible/init

# Remove the "Incompatible" nbt from the storage 
# (this is in case the item doesn't have any incompatible enchantment, therefore it needs to continue to add that curse to the main item)
data remove storage teplus:loot Temp[].Incompatible

# Format the selected curse (Temp[0]) to a compound ---> Store the value in "teplus:temp singlenchobj" storage
function teplus:utils/ench_to_single_obj with storage teplus:loot Temp[0]

# Add the curse to the component
data modify entity @s[tag=teplus.loot_is_book] Item.components.minecraft:stored_enchantments merge from storage teplus:temp singlenchobj
data modify entity @s[tag=teplus.loot_is_item] Item.components.minecraft:enchantments merge from storage teplus:temp singlenchobj

# Clear the storages
data remove storage teplus:loot Curses
data remove storage teplus:loot Temp
data remove storage teplus:loot Copy
data remove storage teplus:loot Build
data remove storage teplus:loot Current
data remove storage teplus:loot Incomp
data remove storage teplus:temp singlenchobj