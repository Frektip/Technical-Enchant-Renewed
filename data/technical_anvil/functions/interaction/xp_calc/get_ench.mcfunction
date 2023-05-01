#1.Store the total amount of custom enchantments and vanilla enchantments
data modify storage teplus:cost Available set value []

#Books
data modify storage teplus:cost Available append from storage teplus:tech_anvil.ui CurrentOutput.tag.StoredCustomEnchantments[]
data modify storage teplus:cost Available append from storage teplus:tech_anvil.ui CurrentOutput.tag.StoredCustomCurse[]
execute if data storage teplus:tech_anvil.ui CurrentOutput.tag.MaxEnch run data modify storage teplus:cost Available append from storage teplus:tech_anvil.ui CurrentOutput.tag.StoredEnchantments[]

#Items
data modify storage teplus:cost Available append from storage teplus:tech_anvil.ui CurrentOutput.tag.CustomEnchantments[]
data modify storage teplus:cost Available append from storage teplus:tech_anvil.ui CurrentOutput.tag.CustomCurse[]
execute if data storage teplus:tech_anvil.ui CurrentOutput.tag.MaxEnch run data modify storage teplus:cost Available append from storage teplus:tech_anvil.ui CurrentOutput.tag.Enchantments[]

#2.Use an scoreboard as a counter for the loop
execute store result score @s teplus.cencnt run data get storage teplus:cost Available

#Initialize scores
scoreboard players set $Sum TCHA.cost 0
scoreboard players set $Allav TCHA.cost 0
scoreboard players set #per_lvl_added TCHA.cost 0

scoreboard players operation $Allav TCHA.cost = @s teplus.cencnt

function technical_anvil:interaction/xp_calc/cicle

#3. Formula to get the Final cost
#--------------------------------------------------------------------#
#                                  [$Expo score] 
# Cost = [base(set by the config)]^              + ($Remain score)
#--------------------------------------------------------------------#

#The $Remain score is the difference between all the enchantments (vanilla and custom) with their 
#  levels added and All the enchantments (vanilla and custom) without their levels
#So we get an accumulation of all extra levels from all enchantments
scoreboard players operation $Remain TCHA.cost = $Sum TCHA.cost
scoreboard players operation $Remain TCHA.cost -= $Allav TCHA.cost
scoreboard players operation $Remain TCHA.cost += #per_lvl_added TCHA.cost

#Exponential increase, based on the # of custom enchantments and curses added (not counting their
# levels and vanilla enchantments either)
scoreboard players operation $Expo TCHA.cost = $Allav TCHA.cost

execute if score #xprq game.Opts matches 2.. run function technical_anvil:interaction/xp_calc/power

data remove storage teplus:cost Available
data remove storage teplus:cost Current