##=====================REGISTER THE ENCHANTMENTS=====================##

# Clear storage to initialize
data modify storage teplus:register Custom set value []

##-----Append the values for each storage-----##
# Low enchantments = Rarity:1
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:anti_explosion",lvl:1,Enabled:1b,Rarity:1,ForItem:{sword:1b,bow:1b,helmet:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:mineshaft",add:4},{id:"minecraft:shipwreck"},{id:"minecraft:underwater_ruin"}],Charge:8}

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:leaping",lvl:3,Enabled:1b,Rarity:1,ForItem:{leggings:1b},Sell:3,Structure:[{all:1b}],Charge:11}

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"teplus:poison_aspect",lvl:3,Enabled:1b,Rarity:1,ForItem:{sword:1b,trident:1b},Sell:4,Structure:[{all:1b},{id:"minecraft:mineshaft",add:3},{id:"minecraft:jungle_temple",add:5},{id:"minecraft:ancient_city"},{id:"minecraft:desert_pyramid",add:3},{id:"minecraft:fortress",add:2}],Charge:13}

# Average enchantments = Rarity:2
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:accuracy_shot",lvl:1,Enabled:1b,Rarity:2,ForItem:{bow:1b,crossbow:1b},Sell:3,Structure:[{id:"minecraft:jungle_temple",add:1},{id:"minecraft:fortress"},{id:"minecraft:bastion"}],Charge:18}

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:arachnid",lvl:1,Enabled:1b,Rarity:2,ForItem:{bow:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:outpost",add:7},{id:"minecraft:desert_pyramid",add:3}],Charge:16}

data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"teplus:sniper",lvl:1,Enabled:1b,Rarity:2,ForItem:{crossbow:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:outpost",add:7}],Charge:17}

# Strong enchantments = Rarity:3
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:last_life",lvl:1,Enabled:1b,Rarity:3,ForItem:{leggings:1b},Sell:4,Structure:[{id:"minecraft:mansion",add:1}],Charge:38}

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:lava_walker",lvl:1,Enabled:1b,Rarity:3,ForItem:{boots:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:bastion",add:12}],Charge:39}

data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"teplus:peaks",lvl:1,Enabled:1b,Rarity:3,ForItem:{shield:1b},Sell:4,Structure:[{id:"minecraft:jungle_temple"},{id:"minecraft:bastion"}],Charge:40}

# Custom Curses
# They don't need "Enabled" or "Rarity" properties
data modify storage teplus:register Custom[].Curse append value {id:"teplus:exhaustion",lvl:1,Enabled:1b,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b},Sell:2,Structure:[{all:1b}]}