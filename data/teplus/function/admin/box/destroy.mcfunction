# @Context: this function is executed when the player destroys the barrel from the admin box
#  In this case we don't return the admin box item

setblock ~ ~ ~ air

# Remove vanilla related items
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}}, distance=..1]

# Remove decoration
kill @e[type=item_display,tag=teplus.decor_admbx,predicate=teplus:block_id_match,distance=..10]

# Kill the marker controller
kill @s

# Kill UI items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}}]