execute store result score @s TCHA.book run data get entity @s Items[{Slot:16b}].Count
scoreboard players remove @s TCHA.book 1

execute store result entity @s Items[{Slot:16b}].Count byte 1 run scoreboard players get @s TCHA.book
