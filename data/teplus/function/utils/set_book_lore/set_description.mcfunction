# We get one parameter: {slot}
# we use it in varipus scenarios where we have an entity holding a custom enchanted book
# For this we previously select the desired enchantment and store in the faollowing data storage:
#        teplus:lore Enchants:[{id:"teplus:enchant_name",lvl:enchant_level}, {...}, ...]
# At least there should be ONE enchantment in the array

# With this, we add the correct book description based on the enchantment from the book
# Use an item modifier to set the Lore
$execute if data storage teplus:lore Enchants[{id:"teplus:accuracy_shot"}] run item modify entity @s $(slot) teplus:set_book_lore/group/shot_arrow
$execute if data storage teplus:lore Enchants[{id:"teplus:agility"}] run item modify entity @s $(slot) teplus:set_book_lore/single/boots
$execute if data storage teplus:lore Enchants[{id:"teplus:anti_explosion"}] run item modify entity @s $(slot) teplus:set_book_lore/specific/anti_explosion
$execute if data storage teplus:lore Enchants[{id:"teplus:anti_knockback"}] run item modify entity @s $(slot) teplus:set_book_lore/single/shield
$execute if data storage teplus:lore Enchants[{id:"teplus:anti_venom"}] run item modify entity @s $(slot) teplus:set_book_lore/specific/anti_venom
$execute if data storage teplus:lore Enchants[{id:"teplus:arachnid"}] run item modify entity @s $(slot) teplus:set_book_lore/single/bow
$execute if data storage teplus:lore Enchants[{id:"teplus:armored"}] run item modify entity @s $(slot) teplus:set_book_lore/single/elytra
$execute if data storage teplus:lore Enchants[{id:"teplus:attack_speed"}] run item modify entity @s $(slot) teplus:set_book_lore/specific/sword_trident
$execute if data storage teplus:lore Enchants[{id:"teplus:auto_feed"}] run item modify entity @s $(slot) teplus:set_book_lore/single/chestplate
$execute if data storage teplus:lore Enchants[{id:"teplus:auto_smelt"}] run item modify entity @s $(slot) teplus:set_book_lore/group/mining_tools
$execute if data storage teplus:lore Enchants[{id:"teplus:big_path"}] run item modify entity @s $(slot) teplus:set_book_lore/single/shovel
$execute if data storage teplus:lore Enchants[{id:"teplus:bloody_blade"}] run item modify entity @s $(slot) teplus:set_book_lore/single/sword
$execute if data storage teplus:lore Enchants[{id:"teplus:bright_vision"}] run item modify entity @s $(slot) teplus:set_book_lore/single/helmet
$execute if data storage teplus:lore Enchants[{id:"teplus:chopping"}] run item modify entity @s $(slot) teplus:set_book_lore/single/axe
$execute if data storage teplus:lore Enchants[{id:"teplus:dasher"}] run item modify entity @s $(slot) teplus:set_book_lore/single/boots
$execute if data storage teplus:lore Enchants[{id:"teplus:excavator"}] run item modify entity @s $(slot) teplus:set_book_lore/single/shovel
$execute if data storage teplus:lore Enchants[{id:"teplus:exhaustion"}] run item modify entity @s $(slot) teplus:set_book_lore/group/tools
$execute if data storage teplus:lore Enchants[{id:"teplus:explosive"}] run item modify entity @s $(slot) teplus:set_book_lore/single/bow
$execute if data storage teplus:lore Enchants[{id:"teplus:fear"}] run item modify entity @s $(slot) teplus:set_book_lore/group/weapons
$execute if data storage teplus:lore Enchants[{id:"teplus:fireball_wave"}] run item modify entity @s $(slot) teplus:set_book_lore/single/crossbow
$execute if data storage teplus:lore Enchants[{id:"teplus:flaming_skin"}] run item modify entity @s $(slot) teplus:set_book_lore/single/chestplate
$execute if data storage teplus:lore Enchants[{id:"teplus:fragile"}] run item modify entity @s $(slot) teplus:set_book_lore/group/all
$execute if data storage teplus:lore Enchants[{id:"teplus:grand_tilling"}] run item modify entity @s $(slot) teplus:set_book_lore/single/hoe
$execute if data storage teplus:lore Enchants[{id:"teplus:hardness_plus"}] run item modify entity @s $(slot) teplus:set_book_lore/single/shield
$execute if data storage teplus:lore Enchants[{id:"teplus:harvesting_plus"}] run item modify entity @s $(slot) teplus:set_book_lore/single/hoe
$execute if data storage teplus:lore Enchants[{id:"teplus:haste"}] run item modify entity @s $(slot) teplus:set_book_lore/group/mining_tools
$execute if data storage teplus:lore Enchants[{id:"teplus:last_life"}] run item modify entity @s $(slot) teplus:set_book_lore/single/leggings
$execute if data storage teplus:lore Enchants[{id:"teplus:last_stand"}] run item modify entity @s $(slot) teplus:set_book_lore/single/sword
$execute if data storage teplus:lore Enchants[{id:"teplus:lava_walker"}] run item modify entity @s $(slot) teplus:set_book_lore/specific/lava_walker
$execute if data storage teplus:lore Enchants[{id:"teplus:leaping"}] run item modify entity @s $(slot) teplus:set_book_lore/single/leggings
$execute if data storage teplus:lore Enchants[{id:"teplus:life_plus"}] run item modify entity @s $(slot) teplus:set_book_lore/single/chestplate
$execute if data storage teplus:lore Enchants[{id:"teplus:life_steal"}] run item modify entity @s $(slot) teplus:set_book_lore/single/sword
$execute if data storage teplus:lore Enchants[{id:"teplus:magnet"}] run item modify entity @s $(slot) teplus:set_book_lore/single/helmet
$execute if data storage teplus:lore Enchants[{id:"teplus:marine_grace"}] run item modify entity @s $(slot) teplus:set_book_lore/single/trident
$execute if data storage teplus:lore Enchants[{id:"teplus:mining_plus"}] run item modify entity @s $(slot) teplus:set_book_lore/single/pickaxe
$execute if data storage teplus:lore Enchants[{id:"teplus:multicolor"}] run item modify entity @s $(slot) teplus:set_book_lore/single/shears
$execute if data storage teplus:lore Enchants[{id:"teplus:peaks"}] run item modify entity @s $(slot) teplus:set_book_lore/single/shield
$execute if data storage teplus:lore Enchants[{id:"teplus:poison_aspect"}] run item modify entity @s $(slot) teplus:set_book_lore/specific/sword_trident
$execute if data storage teplus:lore Enchants[{id:"teplus:recovery"}] run item modify entity @s $(slot) teplus:set_book_lore/specific/recovery
$execute if data storage teplus:lore Enchants[{id:"teplus:replant"}] run item modify entity @s $(slot) teplus:set_book_lore/single/hoe
$execute if data storage teplus:lore Enchants[{id:"teplus:scyther"}] run item modify entity @s $(slot) teplus:set_book_lore/single/hoe
$execute if data storage teplus:lore Enchants[{id:"teplus:sensitive"}] run item modify entity @s $(slot) teplus:set_book_lore/specific/sensitive
$execute if data storage teplus:lore Enchants[{id:"teplus:shock_fangs"}] run item modify entity @s $(slot) teplus:set_book_lore/single/crossbow
$execute if data storage teplus:lore Enchants[{id:"teplus:sky_walk"}] run item modify entity @s $(slot) teplus:set_book_lore/single/boots
$execute if data storage teplus:lore Enchants[{id:"teplus:slippery"}] run item modify entity @s $(slot) teplus:set_book_lore/specific/tools_weapons
$execute if data storage teplus:lore Enchants[{id:"teplus:sniper"}] run item modify entity @s $(slot) teplus:set_book_lore/single/crossbow
$execute if data storage teplus:lore Enchants[{id:"teplus:soul_reaper"}] run item modify entity @s $(slot) teplus:set_book_lore/single/hoe
$execute if data storage teplus:lore Enchants[{id:"teplus:splatter"}] run item modify entity @s $(slot) teplus:set_book_lore/single/fishing_rod
$execute if data storage teplus:lore Enchants[{id:"teplus:striker"}] run item modify entity @s $(slot) teplus:set_book_lore/single/axe
$execute if data storage teplus:lore Enchants[{id:"teplus:swim_plus"}] run item modify entity @s $(slot) teplus:set_book_lore/single/leggings
$execute if data storage teplus:lore Enchants[{id:"teplus:timber"}] run item modify entity @s $(slot) teplus:set_book_lore/single/axe
$execute if data storage teplus:lore Enchants[{id:"teplus:time_breaker"}] run item modify entity @s $(slot) teplus:set_book_lore/single/helmet
$execute if data storage teplus:lore Enchants[{id:"teplus:transmission"}] run item modify entity @s $(slot) teplus:set_book_lore/single/axe
$execute if data storage teplus:lore Enchants[{id:"teplus:turtle_stiffness"}] run item modify entity @s $(slot) teplus:set_book_lore/single/shield
$execute if data storage teplus:lore Enchants[{id:"teplus:vein_miner"}] run item modify entity @s $(slot) teplus:set_book_lore/single/pickaxe
$execute if data storage teplus:lore Enchants[{id:"teplus:waterjet"}] run item modify entity @s $(slot) teplus:set_book_lore/single/trident
$execute if data storage teplus:lore Enchants[{id:"teplus:xp_boost"}] run item modify entity @s $(slot) teplus:set_book_lore/specific/xp_boost