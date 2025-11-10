# This removes the "teplus.charge_full" tag
# It can happen when the table is used so the base charge is decreased, so it's not "full" anymore

execute if score @s[tag=teplus.tier1] teplus.chrgbksf.qnty matches ..11 if score @s teplus.base_charge matches ..99 run tag @s remove teplus.charge_full
execute if score @s[tag=teplus.tier2] teplus.chrgbksf.qnty matches ..17 if score @s teplus.base_charge matches ..199 run tag @s remove teplus.charge_full
execute if score @s[tag=teplus.tier3] teplus.chrgbksf.qnty matches ..23 if score @s teplus.base_charge matches ..299 run tag @s remove teplus.charge_full
execute if score @s[tag=teplus.tier4] teplus.chrgbksf.qnty matches ..29 if score @s teplus.base_charge matches ..399 run tag @s remove teplus.charge_full
execute if score @s[tag=teplus.tier5] teplus.chrgbksf.qnty matches 30.. if score @s teplus.base_charge matches ..499 run tag @s remove teplus.charge_full