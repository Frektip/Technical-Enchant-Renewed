# ==== Debug Message ====#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Anvil): ","color":"yellow","italic":true,"bold":false},{"text":"Enough levels! Giving output item","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Anvil): ","color":"yellow","italic":true,"bold":false},{"text":"Taking xp levels","color":"gray","italic":true,"bold":false}]

playsound block.anvil.use master @a[distance=..6] ~ ~ ~ 1 1 1
particle nautilus ~ ~1.5 ~ 0.0001 0.01 0.0001 5 1000 
particle block{block_state:"minecraft:anvil"} ~ ~1 ~ 0.3 0 0.3 1 150

# Check if the xp value from the settings has sense (at least 0 levels)
scoreboard players operation @p[tag=teplus.anvil.current] teplus.player.xp = @s teplus.anvil.cost
execute as @p[tag=teplus.anvil.current,scores={teplus.player.xp=0..},gamemode=!creative] run function teplus:anvil/merge/action/take_xp/loop

# # Remove input items from minecart
# data remove entity @s Items[{Slot:2b}]
# data remove entity @s Items[{Slot:6b}]

# # Update UI
# data modify storage teplus:updates TAM.CurrentUI set from entity @s Items
# function teplus:anvil/merge/menu/change_item/empty_sections
