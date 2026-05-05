# Turn the armor stand faster
tp @s ~ ~ ~ ~50 ~

# "Open" Animation (move the armor stand's head)
execute if score #Lspn.Duration teplus.open_lapis matches ..12 store result entity @s Pose.Head[0] float 4 run scoreboard players get #Lspn.Duration teplus.open_lapis
