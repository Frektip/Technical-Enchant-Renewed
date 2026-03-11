##=====================REGISTER THE ENCHANTMENTS=====================##

# Clear storage to initialize
data modify storage teplus:register Custom set value []

##-----Append the values for each storage-----##
# Low enchantments = Rarity:1
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:agility",lvl:3,Enabled:1b,Rarity:1,ForItem:{boots:1b},Sell:3,Structure:[{id:"minecraft:shipwreck",add:2},{id:"minecraft:underwater_ruin"}],Charge:12}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:agility"}].Enabled byte 1 run scoreboard players get #agility teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:anti_explosion",lvl:1,Enabled:1b,Rarity:1,ForItem:{sword:1b,bow:1b,helmet:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:mineshaft",add:4},{id:"minecraft:shipwreck"},{id:"minecraft:underwater_ruin"}],Charge:8}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:anti_explosion"}].Enabled byte 1 run scoreboard players get #anti_explosion teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:big_path",lvl:1,Enabled:1b,Rarity:1,ForItem:{shovel:1b},Sell:2,Structure:[{id:"minecraft:village",add:2}],Charge:8}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:big_path"}].Enabled byte 1 run scoreboard players get #big_path teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:bright_vision",lvl:1,Enabled:1b,Rarity:1,ForItem:{helmet:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:mineshaft",add:4},{id:"minecraft:ancient_city",add:5},{id:"minecraft:fortress"}],Charge:15}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:bright_vision"}].Enabled byte 1 run scoreboard players get #bright_vision teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:chopping",lvl:1,Enabled:1b,Rarity:1,ForItem:{axe:1b},Sell:2,Structure:[{id:"minecraft:desert_pyramid"},{id:"minecraft:jungle_temple"},{id:"minecraft:village",add:2}],Charge:10}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:chopping"}].Enabled byte 1 run scoreboard players get #chopping teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:excavator",lvl:1,Enabled:1b,Rarity:1,ForItem:{shovel:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:desert_pyramid",add:3},{id:"minecraft:shipwreck",add:1},{id:"minecraft:village",add:1}],Charge:12}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:excavator"}].Enabled byte 1 run scoreboard players get #excavator teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:flaming_skin",lvl:1,Enabled:1b,Rarity:1,ForItem:{chestplate:1b},Sell:4,Structure:[{all:1b},{id:"minecraft:bastion",add:10},{id:"minecraft:fortress",add:15}],Charge:9}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:flaming_skin"}].Enabled byte 1 run scoreboard players get #flaming_skin teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:grand_tilling",lvl:1,Enabled:1b,Rarity:1,ForItem:{hoe:1b},Sell:2,Structure:[{id:"minecraft:desert_pyramid"},{id:"minecraft:village",add:2}],Charge:7}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:grand_tilling"}].Enabled byte 1 run scoreboard players get #grand_tilling teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:harvesting_plus",lvl:1,Enabled:1b,Rarity:1,ForItem:{hoe:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:fortress"},{id:"minecraft:village",add:2}],Charge:8}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:harvesting_plus"}].Enabled byte 1 run scoreboard players get #harvesting_plus teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:last_stand",lvl:1,Enabled:1b,Rarity:1,ForItem:{sword:1b},Sell:3,Structure:[{id:"minecraft:stronghold"},{id:"minecraft:dungeon"},{id:"minecraft:fortress",add:1},{id:"minecraft:mansion",add:1}],Charge:9}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:last_stand"}].Enabled byte 1 run scoreboard players get #last_stand teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:leaping",lvl:3,Enabled:1b,Rarity:1,ForItem:{leggings:1b},Sell:3,Structure:[{all:1b}],Charge:11}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:leaping"}].Enabled byte 1 run scoreboard players get #leaping teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:marine_grace",lvl:2,Enabled:1b,Rarity:1,ForItem:{trident:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:shipwreck",add:2},{id:"minecraft:underwater_ruin",add:2}],Charge:14}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:marine_grace"}].Enabled byte 1 run scoreboard players get #marine_grace teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:poison_aspect",lvl:3,Enabled:1b,Rarity:1,ForItem:{sword:1b,trident:1b},Sell:4,Structure:[{all:1b},{id:"minecraft:mineshaft",add:3},{id:"minecraft:jungle_temple",add:5},{id:"minecraft:ancient_city"},{id:"minecraft:desert_pyramid",add:3},{id:"minecraft:fortress",add:2}],Charge:13}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:poison_aspect"}].Enabled byte 1 run scoreboard players get #poison_aspect teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:scyther",lvl:2,Enabled:1b,Rarity:1,ForItem:{hoe:1b},Sell:2,Structure:[{id:"minecraft:desert_pyramid",add:2},{id:"minecraft:village",add:1},{id:"minecraft:jungle_temple",add:1}],Charge:10}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:scyther"}].Enabled byte 1 run scoreboard players get #scyther teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:swim_plus",lvl:1,Enabled:1b,Rarity:1,ForItem:{leggings:1b},Sell:2,Structure:[{id:"minecraft:shipwreck",add:2},{id:"minecraft:underwater_ruin",add:5}],Charge:11}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:swim_plus"}].Enabled byte 1 run scoreboard players get #swim_plus teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:transmission",lvl:5,Enabled:1b,Rarity:1,ForItem:{axe:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:ancient_city"},{id:"minecraft:end_city",add:8},{id:"minecraft:bastion"}],Charge:9}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:transmission"}].Enabled byte 1 run scoreboard players get #transmission teplus.game_opts


# Average enchantments = Rarity:2
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:accuracy_shot",lvl:1,Enabled:1b,Rarity:2,ForItem:{bow:1b,crossbow:1b},Sell:3,Structure:[{id:"minecraft:jungle_temple",add:1},{id:"minecraft:fortress"},{id:"minecraft:bastion"}],Charge:18}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:accuracy_shot"}].Enabled byte 1 run scoreboard players get #accuracy_shot teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:anti_knockback",lvl:2,Enabled:1b,Rarity:2,ForItem:{shield:1b},Sell:5,Structure:[{id:"minecraft:ancient_city"},{id:"minecraft:ruined_portal"}],Charge:23}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:anti_knockback"}].Enabled byte 1 run scoreboard players get #anti_knockback teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:arachnid",lvl:1,Enabled:1b,Rarity:2,ForItem:{bow:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:outpost",add:7},{id:"minecraft:desert_pyramid",add:3}],Charge:16}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:arachnid"}].Enabled byte 1 run scoreboard players get #arachnid teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:auto_feed",lvl:1,Enabled:1b,Rarity:2,ForItem:{chestplate:1b},Sell:2,Structure:[{all:1b}],Charge:18}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:auto_feed"}].Enabled byte 1 run scoreboard players get #auto_feed teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:auto_smelt",lvl:1,Enabled:1b,Rarity:2,ForItem:{pickaxe:1b,axe:1b,shovel:1b},Sell:6,Structure:[{all:1b},{id:"minecraft:desert_pyramid"},{id:"minecraft:end_city"},{id:"minecraft:bastion",add:4},{id:"minecraft:village"}],Charge:26}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:auto_smelt"}].Enabled byte 1 run scoreboard players get #auto_smelt teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:bloody_blade",lvl:1,Enabled:1b,Rarity:2,ForItem:{sword:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:fortress",add:1},{id:"minecraft:bastion",add:2},{id:"minecraft:ruined_portal"}],Charge:19}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:bloody_blade"}].Enabled byte 1 run scoreboard players get #bloody_blade teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:dasher",lvl:2,Enabled:1b,Rarity:2,ForItem:{boots:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:bastion"}],Charge:17}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:dasher"}].Enabled byte 1 run scoreboard players get #dasher teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:hardness_plus",lvl:3,Enabled:1b,Rarity:2,ForItem:{shield:1b},Sell:3,Structure:[{id:"minecraft:ancient_city"},{id:"minecraft:end_city"}],Charge:18}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:hardness_plus"}].Enabled byte 1 run scoreboard players get #hardness_plus teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:haste",lvl:2,Enabled:1b,Rarity:2,ForItem:{pickaxe:1b,axe:1b,shovel:1b},Sell:4,Structure:[{all:1b},{id:"minecraft:desert_pyramid",add:2},{id:"minecraft:fortress",add:1},{id:"minecraft:mineshaft",add:3}],Charge:22}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:haste"}].Enabled byte 1 run scoreboard players get #haste teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:magnet",lvl:1,Enabled:1b,Rarity:2,ForItem:{helmet:1b},Sell:4,Structure:[{all:1b},{id:"minecraft:ancient_city"},{id:"minecraft:end_city"}],Charge:25}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:magnet"}].Enabled byte 1 run scoreboard players get #magnet teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:mining_plus",lvl:1,Enabled:1b,Rarity:2,ForItem:{pickaxe:1b},Sell:7,Structure:[{id:"minecraft:ancient_city"},{id:"minecraft:desert_pyramid",add:2},{id:"minecraft:village"},{id:"minecraft:mineshaft"}],Incompatible:[{id:"teplus:vein_miner"},{id:"teplus:compact"}],Charge:28}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:mining_plus"}].Enabled byte 1 run scoreboard players get #mining_plus teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:recovery",lvl:2,Enabled:1b,Rarity:2,ForItem:{leggings:1b},Sell:3,Structure:[{all:1b},{all:1b}],Charge:21}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:recovery"}].Enabled byte 1 run scoreboard players get #recovery teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:shock_fangs",lvl:1,Enabled:1b,Rarity:2,ForItem:{crossbow:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:outpost",add:7},{id:"minecraft:mansion",add:5}],Charge:18}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:shock_fangs"}].Enabled byte 1 run scoreboard players get #shock_fangs teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:sky_walk",lvl:1,Enabled:1b,Rarity:2,ForItem:{boots:1b},Sell:6,Structure:[{all:1b},{id:"minecraft:end_city",add:4}],Charge:20}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:sky_walk"}].Enabled byte 1 run scoreboard players get #sky_walk teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:sniper",lvl:1,Enabled:1b,Rarity:2,ForItem:{crossbow:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:outpost",add:7}],Charge:17}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:sniper"}].Enabled byte 1 run scoreboard players get #sniper teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:splatter",lvl:3,Enabled:1b,Rarity:2,ForItem:{fishing_rod:1b},Structure:[{all:1b},{id:"minecraft:ancient_city",add:4},{id:"minecraft:shipwreck",add:12},{id:"minecraft:underwater_ruin",add:10}],NoDrop:1b,Charge:32}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:splatter"}].Enabled byte 1 run scoreboard players get #splatter teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:striker",lvl:3,Enabled:1b,Rarity:2,ForItem:{axe:1b},Sell:5,Structure:[{all:1b},{id:"minecraft:ancient_city",add:6},{id:"minecraft:village",add:3},{id:"minecraft:mansion",add:4}],Charge:19}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:striker"}].Enabled byte 1 run scoreboard players get #striker teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:turtle_stiffness",lvl:1,Enabled:1b,Rarity:2,ForItem:{shield:1b},Sell:4,Structure:[{id:"minecraft:underwater_ruin",add:3}],Charge:20}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:turtle_stiffness"}].Enabled byte 1 run scoreboard players get #turtle_stiffness teplus.game_opts


# Strong enchantments = Rarity:3
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:anti_venom",lvl:2,Enabled:1b,Rarity:3,ForItem:{chestplate:1b},Sell:7,Structure:[{id:"minecraft:mineshaft",add:3},{id:"minecraft:desert_pyramid",add:3}],Charge:30}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:anti_venom"}].Enabled byte 1 run scoreboard players get #anti_venom teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:armored",lvl:2,Enabled:1b,Rarity:3,ForItem:{elytra:1b},Structure:[{id:"minecraft:ancient_city",add:2},{id:"minecraft:end_city",add:20}],NoDrop:1b,Charge:50}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:armored"}].Enabled byte 1 run scoreboard players get #armored teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:attack_speed",lvl:3,Enabled:1b,Rarity:3,ForItem:{sword:1b,trident:1b},Sell:8,Structure:[{all:1b},{id:"minecraft:igloo"},{id:"minecraft:bastion"}],Incompatible:[{id:"minecraft:sharpness"}],Charge:34}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:attack_speed"}].Enabled byte 1 run scoreboard players get #attack_speed teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:explosive",lvl:1,Enabled:1b,Rarity:3,ForItem:{bow:1b},Sell:9,Structure:[{all:1b},{id:"minecraft:mineshaft",add:2}],Charge:42}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:explosive"}].Enabled byte 1 run scoreboard players get #explosive teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:fireball_wave",lvl:1,Enabled:1b,Rarity:3,ForItem:{crossbow:1b},Sell:4,Structure:[{id:"minecraft:ruined_portal"},{id:"minecraft:bastion",add:9},{id:"minecraft:fortress",add:8}],Charge:34}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:fireball_wave"}].Enabled byte 1 run scoreboard players get #fireball_wave teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:last_life",lvl:1,Enabled:1b,Rarity:3,ForItem:{leggings:1b},Sell:4,Structure:[{id:"minecraft:mansion",add:1}],Charge:38}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:last_life"}].Enabled byte 1 run scoreboard players get #last_life teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:lava_walker",lvl:1,Enabled:1b,Rarity:3,ForItem:{boots:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:bastion",add:12}],Charge:39}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:lava_walker"}].Enabled byte 1 run scoreboard players get #lava_walker teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:life_plus",lvl:5,Enabled:1b,Rarity:3,ForItem:{chestplate:1b},Sell:8,Structure:[{all:1b},{id:"minecraft:stronghold_library",add:12},{id:"minecraft:stronghold",add:5}],Charge:46}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:life_plus"}].Enabled byte 1 run scoreboard players get #life_plus teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:life_steal",lvl:1,Enabled:1b,Rarity:3,ForItem:{sword:1b},Sell:3,Structure:[{id:"minecraft:bastion",add:1}],Charge:37}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:life_steal"}].Enabled byte 1 run scoreboard players get #life_steal teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:multicolor",lvl:1,Enabled:1b,Rarity:3,ForItem:{shears:1b},Structure:[{all:1b},{id:"minecraft:ancient_city",add:5},{id:"minecraft:village",add:13}],NoDrop:1b,Charge:47}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:multicolor"}].Enabled byte 1 run scoreboard players get #multicolor teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:peaks",lvl:1,Enabled:1b,Rarity:3,ForItem:{shield:1b},Sell:4,Structure:[{id:"minecraft:jungle_temple"},{id:"minecraft:bastion"}],Charge:40}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:peaks"}].Enabled byte 1 run scoreboard players get #peaks teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:replant",lvl:1,Enabled:1b,Rarity:3,ForItem:{hoe:1b},Sell:5,Structure:[{all:1b},{id:"minecraft:jungle_temple",add:2},{id:"minecraft:village",add:3}],Charge:38}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:replant"}].Enabled byte 1 run scoreboard players get #replant teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:soul_reaper",lvl:3,Enabled:1b,Rarity:3,ForItem:{hoe:1b},Sell:7,Structure:[{id:"minecraft:stronghold_library",add:10},{id:"minecraft:bastion",add:2}],Charge:42}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:soul_reaper"}].Enabled byte 1 run scoreboard players get #soul_reaper teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:timber",lvl:1,Enabled:1b,Rarity:3,ForItem:{axe:1b},Sell:4,Structure:[{id:"minecraft:jungle_temple"}],Charge:41}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:timber"}].Enabled byte 1 run scoreboard players get #timber teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:time_breaker",lvl:2,Enabled:1b,Rarity:3,ForItem:{helmet:1b},Sell:3,Structure:[{id:"minecraft:end_city"},{id:"minecraft:stronghold"},{id:"minecraft:dungeon"}],Charge:34}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:time_breaker"}].Enabled byte 1 run scoreboard players get #time_breaker teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:vein_miner",lvl:1,Enabled:1b,Rarity:3,ForItem:{pickaxe:1b},Sell:5,Structure:[{all:1b},{id:"minecraft:mineshaft"},{id:"minecraft:stronghold_library",add:15}],Incompatible:[{id:"MiningPlus"},{id:"Compact"}],Charge:42}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:vein_miner"}].Enabled byte 1 run scoreboard players get #vein_miner teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:waterjet",lvl:1,Enabled:1b,Rarity:3,ForItem:{trident:1b},Sell:6,Structure:[{id:"minecraft:underwater_ruin",add:3},{id:"minecraft:shipwreck",add:5}],Charge:47}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:waterjet"}].Enabled byte 1 run scoreboard players get #waterjet teplus.game_opts

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:xp_boost",lvl:3,Enabled:1b,Rarity:3,ForItem:{sword:1b,trident:1b,axe:1b},Sell:5,Structure:[{all:1b},{id:"minecraft:dungeon",add:8}],Charge:43}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:xp_boost"}].Enabled byte 1 run scoreboard players get #xp_boost teplus.game_opts

# Custom Curses
# They don't need "Enabled" or "Rarity" properties
data modify storage teplus:register Custom[].Curse append value {id:"teplus:exhaustion",lvl:1,Enabled:1b,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b},Sell:2,Structure:[{all:1b}]}
execute store result storage teplus:register Custom[].Curse[{id:"teplus:exhaustion"}].Enabled byte 1 run scoreboard players get #exhaustion teplus.game_opts

data modify storage teplus:register Custom[].Curse append value {id:"teplus:fear",lvl:1,Enabled:1b,ForItem:{sword:1b,axe:1b,trident:1b,bow:1b,crossbow:1b},Sell:3,Structure:[{all:1b}]}
execute store result storage teplus:register Custom[].Curse[{id:"teplus:fear"}].Enabled byte 1 run scoreboard players get #fear teplus.game_opts

data modify storage teplus:register Custom[].Curse append value {id:"teplus:fragile",lvl:1,Enabled:1b,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b,sword:1b,trident:1b,bow:1b,crossbow:1b,helmet:1b,chestplate:1b,leggings:1b,boots:1b,elytra:1b,shield:1b},Sell:2,Structure:[{all:1b}]}
execute store result storage teplus:register Custom[].Curse[{id:"teplus:fragile"}].Enabled byte 1 run scoreboard players get #fragile teplus.game_opts

data modify storage teplus:register Custom[].Curse append value {id:"teplus:sensitive",lvl:1,Enabled:1b,ForItem:{helmet:1b,chestplate:1b,leggings:1b,boots:1b,elytra:1b,shield:1b,horse_armor:1b},Sell:3,Structure:[{all:1b}]}
execute store result storage teplus:register Custom[].Curse[{id:"teplus:sensitive"}].Enabled byte 1 run scoreboard players get #sensitive teplus.game_opts

data modify storage teplus:register Custom[].Curse append value {id:"teplus:slippery",lvl:1,Enabled:1b,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b,sword:1b,trident:1b,bow:1b,crossbow:1b},Sell:3,Structure:[{all:1b}]}
execute store result storage teplus:register Custom[].Curse[{id:"teplus:slippery"}].Enabled byte 1 run scoreboard players get #slippery teplus.game_opts