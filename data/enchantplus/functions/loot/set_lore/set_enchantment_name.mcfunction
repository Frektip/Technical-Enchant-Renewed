##=================Use an item modifier to set the new Lore=================##
# The item modifier check if the ouput item is a book or an item, so
# it can add a different Lore style (example: Armored, Multicolor and Splatter)

# It also adds the translated text based on the current Enchantment it is trying to add
# Then it uses the "Level" data storage to add the Roman level Number to the item
# Finally it checks if the output item needs to have a second Lore line using
#  an special tag (teplus.loot_1ench) for enchanted books ONLY
##==========================================================================##

#Use the Data Storage for each enchantment and for it's own data storage
execute if data storage teplus:item_lore First[{id:"AccuracyShot"}] run item modify entity @s container.0 technical_anvil:set_lore/accuracy_shot
execute if data storage teplus:item_lore First[{id:"Agility"}] run item modify entity @s container.0 technical_anvil:set_lore/agility
execute if data storage teplus:item_lore First[{id:"AntiExplosion"}] run item modify entity @s container.0 technical_anvil:set_lore/anti_explosion
execute if data storage teplus:item_lore First[{id:"AntiKnockback"}] run item modify entity @s container.0 technical_anvil:set_lore/anti_knockback
execute if data storage teplus:item_lore First[{id:"AntiVenom"}] run item modify entity @s container.0 technical_anvil:set_lore/anti_venom
execute if data storage teplus:item_lore First[{id:"Arachnid"}] run item modify entity @s container.0 technical_anvil:set_lore/arachnid
execute if data storage teplus:item_lore First[{id:"Armored"}] run item modify entity @s container.0 technical_anvil:set_lore/armored
execute if data storage teplus:item_lore First[{id:"AttackSpeed"}] run item modify entity @s container.0 technical_anvil:set_lore/attack_speed
execute if data storage teplus:item_lore First[{id:"AutoFeed"}] run item modify entity @s container.0 technical_anvil:set_lore/auto_feed
execute if data storage teplus:item_lore First[{id:"AutoSmelt"}] run item modify entity @s container.0 technical_anvil:set_lore/auto_smelt
execute if data storage teplus:item_lore First[{id:"BigPath"}] run item modify entity @s container.0 technical_anvil:set_lore/big_path
execute if data storage teplus:item_lore First[{id:"BloodyBlade"}] run item modify entity @s container.0 technical_anvil:set_lore/bloody_blade
execute if data storage teplus:item_lore First[{id:"BrightVision"}] run item modify entity @s container.0 technical_anvil:set_lore/bright_vision
execute if data storage teplus:item_lore First[{id:"Chopping"}] run item modify entity @s container.0 technical_anvil:set_lore/chopping
execute if data storage teplus:item_lore First[{id:"Dasher"}] run item modify entity @s container.0 technical_anvil:set_lore/dasher
execute if data storage teplus:item_lore First[{id:"Excavator"}] run item modify entity @s container.0 technical_anvil:set_lore/excavator
execute if data storage teplus:item_lore First[{id:"Exhaustion"}] run item modify entity @s container.0 technical_anvil:set_lore/exhaustion
execute if data storage teplus:item_lore First[{id:"Explosive"}] run item modify entity @s container.0 technical_anvil:set_lore/explosive
execute if data storage teplus:item_lore First[{id:"Fear"}] run item modify entity @s container.0 technical_anvil:set_lore/fear
execute if data storage teplus:item_lore First[{id:"FireballWave"}] run item modify entity @s container.0 technical_anvil:set_lore/fireball_wave
execute if data storage teplus:item_lore First[{id:"FlamingSkin"}] run item modify entity @s container.0 technical_anvil:set_lore/flaming_skin
execute if data storage teplus:item_lore First[{id:"Fragile"}] run item modify entity @s container.0 technical_anvil:set_lore/fragile
execute if data storage teplus:item_lore First[{id:"GrandTilling"}] run item modify entity @s container.0 technical_anvil:set_lore/grand_tilling
execute if data storage teplus:item_lore First[{id:"HardnessPlus"}] run item modify entity @s container.0 technical_anvil:set_lore/hardness_plus
execute if data storage teplus:item_lore First[{id:"HarvestingPlus"}] run item modify entity @s container.0 technical_anvil:set_lore/harvesting_plus
execute if data storage teplus:item_lore First[{id:"Haste"}] run item modify entity @s container.0 technical_anvil:set_lore/haste
execute if data storage teplus:item_lore First[{id:"LastLife"}] run item modify entity @s container.0 technical_anvil:set_lore/last_life
execute if data storage teplus:item_lore First[{id:"LastStand"}] run item modify entity @s container.0 technical_anvil:set_lore/last_stand
execute if data storage teplus:item_lore First[{id:"LavaWalker"}] run item modify entity @s container.0 technical_anvil:set_lore/lava_walker
execute if data storage teplus:item_lore First[{id:"Leaping"}] run item modify entity @s container.0 technical_anvil:set_lore/leaping
execute if data storage teplus:item_lore First[{id:"LifePlus"}] run item modify entity @s container.0 technical_anvil:set_lore/life_plus
execute if data storage teplus:item_lore First[{id:"LifeSteal"}] run item modify entity @s container.0 technical_anvil:set_lore/life_steal
execute if data storage teplus:item_lore First[{id:"Magnet"}] run item modify entity @s container.0 technical_anvil:set_lore/magnet
execute if data storage teplus:item_lore First[{id:"MarineGrace"}] run item modify entity @s container.0 technical_anvil:set_lore/marine_grace
execute if data storage teplus:item_lore First[{id:"MiningPlus"}] run item modify entity @s container.0 technical_anvil:set_lore/mining_plus
execute if data storage teplus:item_lore First[{id:"Multicolor"}] run item modify entity @s container.0 technical_anvil:set_lore/multicolor
execute if data storage teplus:item_lore First[{id:"Peaks"}] run item modify entity @s container.0 technical_anvil:set_lore/peaks
execute if data storage teplus:item_lore First[{id:"PoisonAspect"}] run item modify entity @s container.0 technical_anvil:set_lore/poison_aspect
execute if data storage teplus:item_lore First[{id:"Recovery"}] run item modify entity @s container.0 technical_anvil:set_lore/recovery
execute if data storage teplus:item_lore First[{id:"Replant"}] run item modify entity @s container.0 technical_anvil:set_lore/replant
execute if data storage teplus:item_lore First[{id:"Scyther"}] run item modify entity @s container.0 technical_anvil:set_lore/scyther
execute if data storage teplus:item_lore First[{id:"Sensitive"}] run item modify entity @s container.0 technical_anvil:set_lore/sensitive
execute if data storage teplus:item_lore First[{id:"ShockFangs"}] run item modify entity @s container.0 technical_anvil:set_lore/shock_fangs
execute if data storage teplus:item_lore First[{id:"SkyWlak"}] run item modify entity @s container.0 technical_anvil:set_lore/sky_walk
execute if data storage teplus:item_lore First[{id:"Slippery"}] run item modify entity @s container.0 technical_anvil:set_lore/slippery
execute if data storage teplus:item_lore First[{id:"Sniper"}] run item modify entity @s container.0 technical_anvil:set_lore/sniper
execute if data storage teplus:item_lore First[{id:"SoulReaper"}] run item modify entity @s container.0 technical_anvil:set_lore/soul_reaper
execute if data storage teplus:item_lore First[{id:"Splatter"}] run item modify entity @s container.0 technical_anvil:set_lore/splatter
execute if data storage teplus:item_lore First[{id:"Striker"}] run item modify entity @s container.0 technical_anvil:set_lore/striker
execute if data storage teplus:item_lore First[{id:"SwimPlus"}] run item modify entity @s container.0 technical_anvil:set_lore/swim_plus
execute if data storage teplus:item_lore First[{id:"Timber"}] run item modify entity @s container.0 technical_anvil:set_lore/timber
execute if data storage teplus:item_lore First[{id:"TimeBreaker"}] run item modify entity @s container.0 technical_anvil:set_lore/time_breaker
execute if data storage teplus:item_lore First[{id:"Transmission"}] run item modify entity @s container.0 technical_anvil:set_lore/transmission
execute if data storage teplus:item_lore First[{id:"TurtleStiffness"}] run item modify entity @s container.0 technical_anvil:set_lore/turtle_stiffness
execute if data storage teplus:item_lore First[{id:"VeinMiner"}] run item modify entity @s container.0 technical_anvil:set_lore/vein_miner
execute if data storage teplus:item_lore First[{id:"Waterjet"}] run item modify entity @s container.0 technical_anvil:set_lore/waterjet
execute if data storage teplus:item_lore First[{id:"XpBoost"}] run item modify entity @s container.0 technical_anvil:set_lore/xp_boost