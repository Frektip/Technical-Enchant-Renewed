#Each type of sword has a different attribute, it is better if we detect what kind of sword
# the player is trying to combine in first place

#For this, we use attribute modifiers

execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:netherite_sword"}} run item modify entity @s container.22 technical_anvil:attack_speed/sword/netherite
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:diamond_sword"}} run item modify entity @s container.22 technical_anvil:attack_speed/sword/diamond

execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:iron_sword"}} run item modify entity @s container.22 technical_anvil:attack_speed/sword/iron
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:stone_sword"}} run item modify entity @s container.22 technical_anvil:attack_speed/sword/stone

execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:golden_sword"}} run item modify entity @s container.22 technical_anvil:attack_speed/sword/low
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:wooden_sword"}} run item modify entity @s container.22 technical_anvil:attack_speed/sword/low
