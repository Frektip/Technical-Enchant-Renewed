data modify entity @s equipment.head.components.minecraft:enchantment_glint_override set value 1b

# Play particles and sounds
particle minecraft:firework ~ ~1.2 ~ 0 0 0 0.1 10
playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 5 1.2

# Tag the entity so it the animation doesn't repeat
tag @s add teplus.lapis_glint

# Remove base charge full cap from the enchanting table
tag @e[type=marker,tag=teplus.enchanting_table,tag=teplus.charge_full,distance=...5,sort=nearest,limit=1] remove teplus.charge_full