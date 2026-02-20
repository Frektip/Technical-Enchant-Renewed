execute as @e[type=item,tag=!teplus.drop.done,limit=1,sort=nearest] if data entity @s Item.components.minecraft:custom_data.teplus.mob_drop at @s run function teplus:drops/item_generated/as_item

# Schedule the function for 20ticks
schedule function teplus:drops/item_generated/main 1t
scoreboard players add #drop.time teplus.data 1
execute if score #drop.time teplus.data matches 20.. run function teplus:drops/item_generated/stop