#Copy from the Register Storage
data modify storage teplus:loot Copy set value []
data modify storage teplus:loot Copy append from storage teplus:register Custom[].Curse[]

#Remove uneccessary data
data remove storage teplus:loot Copy[].Sell
data remove storage teplus:loot Copy[].Structure

#Cicle though the array
function enchantplus:loot/enchanting/set_curse/loop_build

#Remove Enabled data
data remove storage teplus:loot Curses[].ForItem