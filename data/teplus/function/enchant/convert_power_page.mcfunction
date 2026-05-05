# @Context: This function is run as the Page of Power item that was thrown on top of the enchanting table
# In this case we update the item's data to become a "normal" enchanted book

# ==== Debug Message ====#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Changing a Page of Power into an enchanted book","color":"gray","italic":true,"bold":false}]

# Update data
data remove entity @s Item.components.minecraft:lore[-1]
data remove entity @s Item.components.minecraft:lore[-1]
data remove entity @s Item.components.minecraft:custom_name
data remove entity @s Item.components.minecraft:custom_data
data remove entity @s Item.components.minecraft:enchantment_glint_override

data modify entity @s Item.id set value "minecraft:enchanted_book"
data modify entity @s Motion set value [0.0,0.3,0.0]


# Reset player drop score value
scoreboard players set @a[distance=..10] teplus.drop 0

# End visuals and sounds
particle enchant ~ ~1 ~ 0.1 0.1 0.1 10 5000
playsound block.enchantment_table.use master @a[distance=..30] ~ ~ ~ 100

# Launch armor stand animation
tag @e[type=armor_stand,tag=teplus.bookshelf_level,distance=..3] add teplus.speed_enchanted
tag @e[type=marker,tag=teplus.charged_bookshelf,distance=2..5] add teplus.speed_enchanted
tag @e[type=marker,tag=teplus.enchanting_table,distance=..2] add teplus.speed_enchanted
function teplus:entity/armor_stand/table_rotate/rotate_speed/animate