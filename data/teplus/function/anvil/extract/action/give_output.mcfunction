# ==== Debug Message ====#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Anvil): ","color":"gold","italic":true,"bold":false},{"text":"Removing output storage","color":"gray","italic":true,"bold":false}]

# Remove irrelevant data from Output storage to generate a valid Item
data remove storage teplus:updates TAE.Output.Current.Slot
data remove storage teplus:updates TAE.Output.Current.components.minecraft:custom_data.teplus

# ==== Debug Message ====#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Anvil): ","color":"gold","italic":true,"bold":false},{"text":"Summoning a dummy stick item","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Anvil): ","color":"gold","italic":true,"bold":false},{"text":"Changing the stick nbt","color":"gray","italic":true,"bold":false}]

scoreboard players operation #teplus.anvil.merge_id teplus.player.id = @s teplus.player.id
execute as @a[distance=..6] if score #teplus.anvil.merge_id teplus.player.id = @s teplus.player.id at @s run summon item ~ ~ ~ {Tags:["teplus.anvil.extract"],Item:{id:"stick",count:1},PickupDelay:0}
data modify entity @e[type=item,sort=nearest,tag=teplus.anvil.extract,distance=..6,limit=1] Item set from storage teplus:updates TAE.Output.Current

# Clear storages
data remove storage teplus:updates TAE.Output.Current
data remove storage teplus:updates TAE.Output.Result
data remove storage teplus:updates TAE.Output.Enchants