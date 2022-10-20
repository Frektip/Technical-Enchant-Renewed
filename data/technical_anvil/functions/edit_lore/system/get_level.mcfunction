data modify storage teplus:item_lore Level set value ""
execute unless score @s teplus.single matches 1.. if score @s teplus.tmplvl matches 1 run data modify storage teplus:item_lore Level set value I
execute if score @s teplus.tmplvl matches 2 run data modify storage teplus:item_lore Level set value II
execute if score @s teplus.tmplvl matches 3 run data modify storage teplus:item_lore Level set value III
execute if score @s teplus.tmplvl matches 4 run data modify storage teplus:item_lore Level set value IV
execute if score @s teplus.tmplvl matches 5 run data modify storage teplus:item_lore Level set value V
execute if score @s teplus.tmplvl matches 6 run data modify storage teplus:item_lore Level set value VI
execute if score @s teplus.tmplvl matches 7 run data modify storage teplus:item_lore Level set value VII
execute if score @s teplus.tmplvl matches 8 run data modify storage teplus:item_lore Level set value VIII
execute if score @s teplus.tmplvl matches 9 run data modify storage teplus:item_lore Level set value IX
execute if score @s teplus.tmplvl matches 10 run data modify storage teplus:item_lore Level set value X
execute if score @s teplus.tmplvl matches 11 run data modify storage teplus:item_lore Level set value XI
execute if score @s teplus.tmplvl matches 12 run data modify storage teplus:item_lore Level set value XII
execute if score @s teplus.tmplvl matches 13 run data modify storage teplus:item_lore Level set value XIII
execute if score @s teplus.tmplvl matches 14 run data modify storage teplus:item_lore Level set value XIV
execute if score @s teplus.tmplvl matches 15 run data modify storage teplus:item_lore Level set value XV
execute if score @s teplus.tmplvl matches 16 run data modify storage teplus:item_lore Level set value XVI
execute if score @s teplus.tmplvl matches 17 run data modify storage teplus:item_lore Level set value XVII
execute if score @s teplus.tmplvl matches 18 run data modify storage teplus:item_lore Level set value XVIII
execute if score @s teplus.tmplvl matches 19 run data modify storage teplus:item_lore Level set value XIX
execute if score @s teplus.tmplvl matches 20 run data modify storage teplus:item_lore Level set value XX
execute if score @s teplus.tmplvl matches 21 run data modify storage teplus:item_lore Level set value XXI
execute if score @s teplus.tmplvl matches 22 run data modify storage teplus:item_lore Level set value XXII
execute if score @s teplus.tmplvl matches 23 run data modify storage teplus:item_lore Level set value XXIII
execute if score @s teplus.tmplvl matches 24 run data modify storage teplus:item_lore Level set value XXIV
execute if score @s teplus.tmplvl matches 25 run data modify storage teplus:item_lore Level set value XXV

execute if score @s teplus.tmplvl matches 26.. store result storage teplus:item_lore Level int 1 run scoreboard players get @s teplus.tmplvl
