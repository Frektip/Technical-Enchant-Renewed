# Create a temp storage
$data modify storage teplus:ui Global[{profile:"admin_box"}].Copy set from storage teplus:ui Global[{profile:"admin_box"}].Books[$(index)]
data remove storage teplus:ui Global[{profile:"admin_box"}].Copy.Slot
data remove storage teplus:ui Global[{profile:"admin_box"}].Copy.components.minecraft:bundle_contents
data remove storage teplus:ui Global[{profile:"admin_box"}].Copy.components.minecraft:custom_data.teplus

# Add the enchantment again to the barrel
data modify block ~ ~ ~ Items append from storage teplus:ui Global[{profile:"admin_box"}].Books[]

# Give the enchantment if the current player is the owner
execute if score @s teplus.player.id = @p teplus.player.id run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 5 .5
execute if score @s teplus.player.id = @p teplus.player.id as @p run function teplus:utils/give_dynamic_loot with storage teplus:ui Global[{profile:"admin_box"}].Copy
execute unless score @s teplus.player.id = @p teplus.player.id run tellraw @p [{"translate":"You are not the owner from this Admin Box","color":"red"}]

# Clear the storage
data remove storage teplus:ui Global[{profile:"admin_box"}].Copy