data modify storage teplus:register Resource[1].Compare set from entity @s Item
data remove storage teplus:register Resource[1].Compare.Count
execute store result score #is.baserce teplus.data run data modify storage teplus:register Resource[1].Compare set from storage teplus:register Resource[0].Value

execute if score #is.baserce teplus.data matches 0 store result score #add.bachrg BaseCharge run data get entity @s Item.Count

scoreboard players operation #add.bachrg BaseCharge *= #qtychrg game.Opts

tag @s add charge.try