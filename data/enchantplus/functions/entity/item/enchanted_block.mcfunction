execute if entity @s[tag=teplus.item_minplus] at @s run function enchantplus:result/miningplus/ini 
execute if entity @s[tag=teplus.item_excav] at @s run function enchantplus:result/excavator/ini 
execute if entity @s[tag=teplus.item_chopp] at @s run function enchantplus:result/chopping/ini 
execute if entity @s[tag=teplus.item_scyt] at @s run function enchantplus:result/scyther/as_item
execute if score #autsml Enchopts matches 0 if entity @s[tag=teplus.item_smelt] at @s run function enchantplus:result/autosmelt