# Set an ID
scoreboard players operation @s teplus.block_id = $current teplus.block_id
scoreboard players operation @s teplus.player.id = #admin.this teplus.player.id

# Set tags
tag @s add teplus.marker
tag @s add teplus.admin_box

# Set the marker in the middle of the block
tp @s ~0.5 ~ ~0.5

# Set barrel block
setblock ~ ~ ~ minecraft:barrel[facing=up] replace

# Initialize UI
data modify block ~ ~ ~ Items set from storage teplus:ui Global[{profile:"admin_box"}].Main