# Set an ID
scoreboard players operation @s teplus.block_id = $adminbox teplus.block_id
scoreboard players operation @s tep.plid = #admin.this tep.plid

# Set tags
tag @s add teplus.marker
tag @s add teplus.admin_box
#tag @s add teplus.light_source.top

# Set the marker in the middle of the block
tp @s ~0.5 ~ ~0.5