#Debug Message
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Enchanting table removed, killing marker entity and lapis armor stands","color":"gray","italic":true,"bold":false}]

kill @e[type=armor_stand,tag=teplus.bookshelf_level,distance=..2]

#Return the items from the charge
execute if score @s BaseCharge matches 1.. run function enchantplus:entity/marker/add_base_charge/give_back_all

kill @s