scoreboard players add @s TimerDash 1

#Harm nearby entities ecluding the OWNER
execute as @e[type=!#enchantplus:antisoul,distance=..1.75] unless score @s tep.plid = @e[tag=dasher.harm,distance=..2,limit=1] tep.plid run effect give @s wither 1 5 true

#Kill after 1 second
execute if score @s TimerDash matches 20.. run kill @s