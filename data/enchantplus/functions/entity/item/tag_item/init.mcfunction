###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Tagging the nearest item","color":"gray","italic":true,"bold":false}]

#Addon support to tag the item
function #enchantplus:break_block/item_tag_ench

tag @s add teplus.ench_block