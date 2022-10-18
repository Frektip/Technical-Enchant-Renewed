###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Getting player's enchantments (mainhand)","color":"gray","italic":true,"bold":false}]

#Detect other enchantments that the player may have
scoreboard players set #fortune teplus.data 0
scoreboard players set #silk teplus.data 0
scoreboard players set #smelt teplus.data 0
scoreboard players set #minplus teplus.data 0
scoreboard players set #veinmin teplus.data 0
scoreboard players set #excavat teplus.data 0
scoreboard players set #chopping teplus.data 0
scoreboard players set #timber teplus.data 0
scoreboard players set #scyther teplus.data 0

#Test the values
#Vanilla enchantments
execute store success score #fortune teplus.data run execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:fortune"}]
execute store success score #silk teplus.data run execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:silk_touch"}]

#TE+ enchantments
execute store success score #smelt teplus.data run execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"AutoSmelt"}]
execute store success score #minplus teplus.data run execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"MiningPlus"}]
execute store success score #veinmin teplus.data run execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"VeinMiner"}]
execute store success score #excavat teplus.data run execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"Excavator"}]
execute store success score #chopping teplus.data run execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"Chopping"}]
execute store success score #timber teplus.data run execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"Timber"}]
execute store result score #scyther teplus.data run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"Scyther"}].lvl