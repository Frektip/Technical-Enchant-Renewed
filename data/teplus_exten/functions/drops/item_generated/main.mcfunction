execute as @e[type=item,tag=!tepdrop.done,limit=1,sort=nearest,nbt={Item:{tag:{teplus.mob_drop:1b}}}] at @s run function teplus_exten:drops/item_generated/as_item

#Schedule the function for 20ticks
schedule function teplus_exten:drops/item_generated/main 1t
scoreboard players add #drop.time teplus.data 1
execute if score #drop.time teplus.data matches 20.. run function teplus_exten:drops/item_generated/stop