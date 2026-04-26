playsound minecraft:entity.item.pickup master @p ~ ~ ~ 5 .5
$loot give @p loot teplus:items/$(item_id)

# Execute a function in case a configuration was made previously
$$(post_give_callback)