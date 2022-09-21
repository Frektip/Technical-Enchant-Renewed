#Get the owner of the nearest arrow
execute as @e[distance=..6,type=arrow,tag=!tep.arrow_owner,nbt=!{inGround:1b}] at @s run function enchbowcross:load/get_owner

#Modify the arrow depending on the 
# Check for:
# - the enchantments using a scoreboard
# - if that enchantment is enabled
# - debuged arrow with "#trigger" fake player on each enchantment
# - as the nearest arrow that has the same owner UUID as the player
execute if score @s teplus.accst matches 1 if score #accshot Enchopts matches 0 if score #trigger teplus.accst matches 1.. as @e[type=arrow,tag=tep.arrow_valid_owner,tag=!tep.accuracy,distance=..6,sort=nearest] at @s run function enchbowcross:load/accuracy_shot
execute if score @s teplus.snpr matches 1 if score #snp Enchopts matches 0 if score #trigger teplus.snpr matches 1.. as @e[type=arrow,tag=tep.arrow_valid_owner,tag=!tep.sniper,distance=..6,sort=nearest] at @s run function enchbowcross:load/sniper
execute if score @s teplus.arach matches 1 if score #arch Enchopts matches 0 if score #trigger teplus.arach matches 1.. as @e[type=arrow,tag=tep.arrow_valid_owner,tag=!tep.arachnid,distance=..6,sort=nearest] at @s run function enchbowcross:load/arachnid
execute if score @s teplus.explo matches 1 if score #expl Enchopts matches 0 if score #trigger teplus.explo matches 1.. as @e[type=arrow,tag=tep.arrow_valid_owner,tag=!tep.explosive,distance=..6,sort=nearest] at @s run function enchbowcross:load/explosive
execute if score @s teplus.frbwv matches 1 if score #frbw Enchopts matches 0 if score #trigger teplus.frbwv matches 1.. as @e[type=arrow,tag=tep.arrow_valid_owner,tag=!tep.firewave,distance=..6,sort=nearest] at @s run function enchbowcross:load/fireball_wave
execute if score @s teplus.shfng matches 1 if score #skfg Enchopts matches 0 if score #trigger teplus.shfng matches 1.. as @e[type=arrow,tag=tep.arrow_valid_owner,tag=!tep.shockfangs,distance=..6,sort=nearest] at @s run function enchbowcross:load/shock_fangs
