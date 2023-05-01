#Random % discount amount, remove from 3 to 10 Base Charge use
execute if score $Discount BaseCharge matches 1 run scoreboard players set $min random 2
execute if score $Discount BaseCharge matches 2 run scoreboard players set $min random 3
execute if score $Discount BaseCharge matches 1 run scoreboard players set $max random 4
execute if score $Discount BaseCharge matches 2 run scoreboard players set $max random 7
function enchantplus:random_uniform

#Apply the discount
scoreboard players operation #teplus.bachamt BaseCharge -= $out random

#Just in case
execute if score #teplus.bachamt BaseCharge matches ..-1 run scoreboard players set #teplus.bachamt BaseCharge 0

tellraw @a[tag=teplus.pydbgm] ["",{"text":"Discount: ","color":"green"},{"score":{"name":"#teplus.bachamt","objective":"BaseCharge"},"color":"green"}]
