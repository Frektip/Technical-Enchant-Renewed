### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Changing a Page of Power into an enchanted book","color":"gray","italic":true,"bold":false}]

#Remove/change data
data remove entity @s Item.tag.display.Lore[0]
data remove entity @s Item.tag.display.Lore[0]
data remove entity @s Item.tag.display.Lore[0]
data remove entity @s Item.tag.display.Name

data remove entity @s Item.tag.Enchantments
data remove entity @s Item.tag.TeplusHead
data remove entity @s Item.tag.TeplusPower_page

data modify entity @s Item.id set value "minecraft:enchanted_book"
data modify entity @s Motion set value [0.0,0.3,0.0]


#End visuals and sounds
execute as @a[distance=..10] at @s run scoreboard players set @s Drop 0
particle enchant ~ ~1 ~ 0.1 0.1 0.1 10 5000
playsound block.enchantment_table.use master @a[distance=..30] ~ ~ ~ 100
scoreboard players set #enchant.rarity teplus.data 4

#Because the enchantting was successful, do the armor stand animation
tag @e[type=armor_stand,tag=teplus.bookshelf_level,distance=..3] add speed_enchanted
tag @e[type=marker,tag=teplus.charged_bookshelf,distance=2..5] add speed_enchanted
tag @e[type=marker,tag=teplus.enchanting_table,distance=..2] add speed_enchanted
function enchantplus:entity/armor_stand/speed_animation