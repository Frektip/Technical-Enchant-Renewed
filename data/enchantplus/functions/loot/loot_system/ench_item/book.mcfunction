### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Summoned a dummy item frame","color":"gray","italic":true,"bold":false}]

##========================TECHNICAL ENCHANT+========================##
#--------Adding Custom Enchantments to the book--------#
#Add tag, this will help selecting from the enchantment list
tag @s add teplus.loot_is_book

#Set StoredCustomEnchantments[{}] nbt
function enchantplus:loot/enchanting/check_type
#------------------------------------------------------#

#--------Adding Custom Curses to the book--------#
#5% chance
execute if predicate enchantplus:random_chance/5 run function enchantplus:loot/enchanting/set_curse/book_only
#------------------------------------------------#

#------------------Update the Lore------------------
#By default add a tag if the book only has One enchantment
tag @s add teplus.loot_1ench
# In case the enchanted book as more than one enchantment, then avoid adding
# the second Lore line. We do this by removing the tag
execute if data entity @s Item.tag.StoredCustomEnchantments[1] run tag @s remove teplus.loot_1ench
execute if data entity @s Item.tag.StoredCustomEnchantments if data entity @s Item.tag.StoredCustomCurse run tag @s remove teplus.loot_1ench

function #enchantplus:set_lore_book
#---------------------------------------------------#
##==================================================================##

#Summon a new item that will get the data from this item frame
summon item ~ ~ ~ {Motion:[0.0,0.32,0.0],PickupDelay:4,Tags:["enchant_sucessful"],Item:{id:"minecraft:stone_button",Count:1b}}

### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Summon a dummy stone button and changing it's nbt","color":"gray","italic":true,"bold":false}]

#Give the stone button thhe new item nbt
data modify entity @e[type=item,tag=enchant_sucessful,limit=1,sort=nearest] Item set from entity @s Item

#Kill the item frame
kill @s

#Because the enchantting was successful, do the armor stand animation
tag @e[type=armor_stand,distance=..2] add speed_enchanted
function enchantplus:entity/armor_stand/speed_animation