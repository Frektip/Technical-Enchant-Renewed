### Debug Message ###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Summoned a dummy item frame","color":"gray","italic":true,"bold":false}]

##========================TECHNICAL ENCHANT+========================##
#--------Adding Custom Enchantments to the item--------#
function teplus:enchant/set_enchant/core
#------------------------------------------------------#

#--------Adding Custom Curses to the item--------#
execute if predicate teplus:random_chance/5 run function teplus:enchant/set_curse/prepare
#---------------------------------------------------#

#------------------Update the Lore (Book Only) ------------------#
execute if entity @s[tag=teplus.loot_is_book] run function teplus:utils/set_book_lore/check_enchants {path:"Item",slot:"container.0"}
#---------------------------------------------------#
##==================================================================##

#Summon a new item that will get the data from this item frame
summon item ~ ~ ~ {Motion:[0.0,0.32,0.0],PickupDelay:4,Tags:["teplus.enchant_sucessful"],Item:{id:"minecraft:stone_button",count:1}}

### Debug Message ###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Summon a dummy stone button and changing it's nbt","color":"gray","italic":true,"bold":false}]

#Give the stone button the new item nbt
data modify entity @e[type=item,tag=teplus.enchant_sucessful,limit=1,sort=nearest] Item set from entity @s Item

#Kill the item frame
kill @s

#Because the enchantting was successful, do the armor stand animation
tag @e[type=armor_stand,tag=teplus.bookshelf_level,distance=..3] add teplus.speed_enchanted
tag @e[type=marker,tag=teplus.enchanting_table,distance=..2] add teplus.speed_enchanted
function teplus:entity/armor_stand/table_rotate/rotate_speed/animate