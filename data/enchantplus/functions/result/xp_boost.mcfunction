execute if entity @e[type=minecraft:experience_orb,distance=..15,nbt={Age:1s}] run scoreboard players set @s XpBoostKill 0


#store the lvl of xp boost
execute store result score #level teplus.xpbst run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"XpBoost"}].lvl
#Scale it by 10
scoreboard players operation #level teplus.xpbst *= #10const teplus.data

#Change the nearest xp orbs
execute as @e[type=minecraft:experience_orb,distance=..15,tag=!teplus.orbench] run function enchantplus:result/xp_boost_orb

#clear
scoreboard players reset #level teplus.xpbst
