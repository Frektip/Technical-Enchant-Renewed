##This function is unused!!!
##I keep it in case I need it to check unbreaking for armor
## only then I'll update this code
##Right now it is just a reference

#Always add 1 to the max value
scoreboard players add $max random 1

#Loop the function until "#unb.chnc teplus.data" reaches 9990 or 10000
# Meaning 99% or 100% aka COMPLETE
scoreboard players operation #unb.chnc teplus.data += #temp.unb teplus.data

execute unless score #unb.chnc teplus.data matches 9990.. run function enchantplus:durability_change/unbreaking/loop_max