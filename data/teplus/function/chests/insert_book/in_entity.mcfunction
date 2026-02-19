#====================================================================================#
#> @Context: The current entity is the Dummy Armor Stand inside the container (chest)
#====================================================================================#

# Randomly add the book to the chest
execute store result score $out teplus.rng run random value 0..26

execute if score $out teplus.rng matches 0 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.0 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 1 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.1 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 2 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.2 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 3 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.3 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 4 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.4 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 5 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.5 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 6 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.6 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 7 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.7 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 8 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.8 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 9 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.9 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 10 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.10 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 11 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.11 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 12 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.12 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 13 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.13 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 14 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.14 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 15 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.15 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 16 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.16 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 17 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.17 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 18 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.18 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 19 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.19 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 20 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.20 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 21 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.21 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 22 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.22 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 23 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.23 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 24 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.24 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 25 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.25 from entity @s weapon.mainhand
execute if score $out teplus.rng matches 26 run item replace entity @e[type=#teplus:container_entites,limit=1,sort=nearest,distance=..1] container.26 from entity @s weapon.mainhand