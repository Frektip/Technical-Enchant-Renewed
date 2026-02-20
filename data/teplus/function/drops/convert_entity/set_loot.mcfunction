execute store result score #drops.out teplus.rng run random value 0..9

execute if score #drops.out teplus.rng matches 0..1 run data modify storage teplus:drops type set value {mob_drop: 1b, rarity: "strong"}
execute if score #drops.out teplus.rng matches 0..1 run team join tepdrp.strong @s

execute if score #drops.out teplus.rng matches 2..4 run data modify storage teplus:drops type set value {mob_drop: 1b, rarity: "average"}
execute if score #drops.out teplus.rng matches 2..4 run team join tepdrp.average @s

execute if score #drops.out teplus.rng matches 5..8 run data modify storage teplus:drops type set value {mob_drop: 1b, rarity: "low"}
execute if score #drops.out teplus.rng matches 5..8 run team join tepdrp.low @s

execute if score #drops.out teplus.rng matches 9 run data modify storage teplus:drops type set value {mob_drop: 1b, rarity: "curse"}
execute if score #drops.out teplus.rng matches 9 run team join tepdrp.curses @s

data modify entity @s DeathLootTable set value "teplus:drops_loot"