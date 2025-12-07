# teplus.rng % discount amount, remove from 3 to 10 Base Charge use
execute if score $discount teplus.base_charge matches 1 run scoreboard players set $min teplus.rng 2
execute if score $discount teplus.base_charge matches 2 run scoreboard players set $min teplus.rng 3
execute if score $discount teplus.base_charge matches 1 run scoreboard players set $max teplus.rng 4
execute if score $discount teplus.base_charge matches 2 run scoreboard players set $max teplus.rng 7
function teplus:utils/random/init

# Apply the discount
scoreboard players operation #teplus.bachamt teplus.base_charge -= $out teplus.rng

# Just in case
execute if score #teplus.bachamt teplus.base_charge matches ..-1 run scoreboard players set #teplus.bachamt teplus.base_charge 0

tellraw @a[tag=teplus.debug_mode] [{"text":"    Final with discount: ","color":"green"},{"score":{"name":"#teplus.bachamt","objective":"teplus.base_charge"},"color":"green"}]
