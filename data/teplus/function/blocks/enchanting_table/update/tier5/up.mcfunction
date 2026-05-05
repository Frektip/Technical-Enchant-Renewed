# Play particles and sounds
particle minecraft:firework ~ ~1.2 ~ 0 0 0 0.1 10
playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 5 1.2

# Tag the entity so it the animation doesn't repeat
tag @s add teplus.tier5_up

# Remove base charge full cap
tag @s remove teplus.charge_full