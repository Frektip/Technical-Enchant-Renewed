# @Context: We are an entity that is given some loot
# We dynamically give the loot to the current entity
#
# For this, we use a storage that has the following arguments:
#   ${id}: The id of the item
#   ${components}: The components of the item
#   ${count}: The count of item

$loot give @s loot {pools:[{rolls:1,entries:[{type:"item",name:"$(id)",functions:[{function:"set_components",components:$(components)},{function:"set_count",count:$(count)}]}]}]}