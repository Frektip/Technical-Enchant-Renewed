execute if block ~ ~ ~ barrel[open=true] run function teplus_admin_box:main
execute if block ~ ~ ~ barrel[open=false] if entity @s[tag=is.open] run tag @s remove is.open

#Update the score
scoreboard players operation $adminbox teplus.block_id = @s teplus.block_id

##Prevent stealing from hoppers and hopper minecarts
execute if block ~ ~-1 ~ hopper run data remove block ~ ~-1 ~ Items[{tag:{Teplus:{ui:1b}}}]
execute as @e[type=hopper_minecart,distance=..2] run data remove entity @s Items[{tag:{Teplus:{ui:1b}}}]

#Kill UI items when dropped
kill @e[type=item,nbt={Item:{tag:{Teplus:{ui:1b}}}},distance=..5]

# Remove if the block is broken (wait one tick for minecart placement)
execute unless block ~ ~ ~ barrel if entity @s[tag=tepadbx.set] run function teplus_admin_box:events/destroy
execute unless block ~ ~ ~ barrel if entity @s[tag=tepadbx.set] run kill @e[type=item,nbt={Item:{tag:{Teplus:{ui:1b}}}}]

tag @s[tag=!tepadbx.set] add tepadbx.set