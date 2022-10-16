#Turn the armor stand faster
execute if score #tslpm game.Opts matches 1 run tp @s ~ ~ ~ ~50 ~

#Open Animation
execute if score #Lspn.Duration tep.spd_animt matches ..12 store result entity @s Pose.Head[0] float 4 run scoreboard players get #Lspn.Duration tep.spd_animt
