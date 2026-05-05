# Setup a max tier Xp Crystal to insert/give it
data modify storage teplus:xp_crystal Build set value {}
data modify storage teplus:xp_crystal Build.Tier set value 5
data modify storage teplus:xp_crystal Build.Value set value [1450,1450]

scoreboard players set #teplus.xptier teplus.data 5
scoreboard players set #teplus.xpvalue teplus.data 1450
scoreboard players set #teplus.xpmax teplus.data 1450