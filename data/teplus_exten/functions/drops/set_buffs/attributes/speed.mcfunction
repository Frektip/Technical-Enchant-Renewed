scoreboard players set $min random 0
scoreboard players set $max random 2
function enchantplus:random_uniform


execute if score $out random matches 0 run attribute @s generic.movement_speed modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.Speed 0.33 multiply
execute if score $out random matches 1 run attribute @s generic.movement_speed modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.Speed 0.38 multiply
execute if score $out random matches 2 run attribute @s generic.movement_speed modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.Speed 0.4 multiply