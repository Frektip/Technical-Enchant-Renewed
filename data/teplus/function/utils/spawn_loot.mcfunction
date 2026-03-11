# @Context: We are a player who has inserted an item in a UI slot
# We dynamically summon the item into the player's position
#
# For this, we use a storage that has the following arguments:
#   ${id}: The id of the item
#   ${components}: The components of the item
#   ${count}: The count of item

$summon item ~ ~ ~ {Item:{id:"$(id)",count:$(count),components:$(components)},PickupDelay:0}