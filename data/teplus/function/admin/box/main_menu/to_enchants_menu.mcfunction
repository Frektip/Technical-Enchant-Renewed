# Update tags
tag @s remove teplus.admin_box.main
tag @s add teplus.admin_box.ench

# Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

# Initialize Storage
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items set from storage teplus:ui Global[{profile:"admin_box"}].Enchants



# Add UI related components to the items
# data modify block ~ ~ ~ Items[{}].components merge value {"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}]}
# data modify block ~ ~ ~ Items[{}].components.minecraft:custom_data.teplus merge value {ui:1b}