##=========REGISTER THE ENCHANTMENTS=========##
#We create a storage containing information about the enchantment
# is contained in an array in a single "{}"

#If the sturcure parameter isn't there, that means that the enchantment
# can be obtained from any loot-chest

#CustomCurses doesn't have an enabled parameter or structure parameter,
# they aren't divided between low, average or strong

#The storage should be something like:
# Main array "Custom" []
# Divided between Enchantment[] and Curse[] arrays
# Enchantment[] is divided in Low[], Average[] and Strong[] arrays
#Each Enchantment/Curse array contains the following infomration in a string:

##OBLIGATORY##
# id""
#lvl:1(max level possible)
#Enabled:0b=on,1b=off [NO NEEDED IF IT IS A CURSE]
#Rarirty:from 1 to 3 (low, average and strong) [NO NEEDED IF IT IS A CURSE]
#ForItem:{item:1b} (all items that the enchantment is compatible with)
#Sell:7 (value for villagers to sell this enchantment)

##OPTIONAL##
#Structure:{all:1b,acient_city:1b,add:10} if set to "all" it can 
# spawn in any vanilla structure. the "add" nbt will make that
# enchantment more likely to appear in that/those loot-chest

#NoBook:1b prevents that enchantment from getting added with the
# enchanting setup, even if the enchantment is enabled

#NoItem:1b prevents that enchantment from getting added to their
# respective item with the enchanting setup, even if the 
# enchantment is enabled

#NoChest:1b prevents that enchantment from getting added to their
# respective loot-table chest even if the enchantment is enabled

#NoVil:1b prevents that enchantment from getting added to a
# technical librarian, even if the enchantment is enabled

#Clear it to initialize it
data modify storage teplus:register Custom set value []

##-----Append the values for each storage-----##
#Low enchantments = Rarity:1
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Agility",lvl:3,Enabled:0b,Rarity:1,ForItem:{boots:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"AntiExplosion",lvl:1,Enabled:0b,Rarity:1,ForItem:{sword:1b,bow:1b,helmet:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"BigPath",lvl:1,Enabled:0b,Rarity:1,ForItem:{shovel:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"BrightVision",lvl:1,Enabled:0b,Rarity:1,ForItem:{helmet:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Chopping",lvl:1,Enabled:0b,Rarity:1,ForItem:{axe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Excavator",lvl:1,Enabled:0b,Rarity:1,ForItem:{shovel:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"FlamingSkin",lvl:1,Enabled:0b,Rarity:1,ForItem:{chestplate:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"GrandTilling",lvl:1,Enabled:0b,Rarity:1,ForItem:{hoe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"HarvestingPlus",lvl:1,Enabled:0b,Rarity:1,ForItem:{hoe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"LastStand",lvl:1,Enabled:0b,Rarity:1,ForItem:{sword:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Leaping",lvl:3,Enabled:0b,Rarity:1,ForItem:{leggings:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"MarineGrace",lvl:2,Enabled:0b,Rarity:1,ForItem:{trident:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"PoisonAspect",lvl:3,Enabled:0b,Rarity:1,ForItem:{sword:1b,trident:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Scyther",lvl:2,Enabled:0b,Rarity:1,ForItem:{hoe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"SwimPlus",lvl:1,Enabled:0b,Rarity:1,ForItem:{leggings:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Transmission",lvl:5,Enabled:0b,Rarity:1,ForItem:{axe:1b},Sell:5}



#Average enchantments = Rarity:2
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AccuracyShot",lvl:1,Enabled:0b,Rarity:2,ForItem:{bow:1b,crossbow:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AntiKnockback",lvl:2,Enabled:0b,Rarity:2,ForItem:{shield:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Arachnid",lvl:1,Enabled:0b,Rarity:2,ForItem:{bow:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AutoFeed",lvl:1,Enabled:0b,Rarity:2,ForItem:{chestplate:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AutoSmelt",lvl:1,Enabled:0b,Rarity:2,ForItem:{pickaxe:1b,axe:1b,shovel:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"BloodyBlade",lvl:1,Enabled:0b,Rarity:2,ForItem:{sword:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Dasher",lvl:2,Enabled:0b,Rarity:2,ForItem:{boots:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"HardnessPlus",lvl:3,Enabled:0b,Rarity:2,ForItem:{shield:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Haste",lvl:2,Enabled:0b,Rarity:2,ForItem:{pickaxe:1b,axe:1b,shovel:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Magnet",lvl:1,Enabled:0b,Rarity:2,ForItem:{helmet:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"MiningPlus",lvl:1,Enabled:0b,Rarity:2,ForItem:{pickaxe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Recovery",lvl:2,Enabled:0b,Rarity:2,ForItem:{leggings:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"ShockFangs",lvl:1,Enabled:0b,Rarity:2,ForItem:{crossbow:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"SkyWalk",lvl:1,Enabled:0b,Rarity:2,ForItem:{boots:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Sniper",lvl:1,Enabled:0b,Rarity:2,ForItem:{crossbow:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Splatter",lvl:3,Enabled:0b,Rarity:2,ForItem:{fishing_rod:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Striker",lvl:3,Enabled:0b,Rarity:2,ForItem:{axe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"TurtleStiffness",lvl:1,Enabled:0b,Rarity:2,ForItem:{shield:1b},Sell:5}



#Strong enchantments = Rarity:3
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"AntiVenom",lvl:2,Enabled:0b,Rarity:3,ForItem:{chestplate:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Armored",lvl:2,Enabled:0b,Rarity:3,ForItem:{elytra:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"AttackSpeed",lvl:3,Enabled:0b,Rarity:3,ForItem:{sword:1b,trident:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Explosive",lvl:1,Enabled:0b,Rarity:3,ForItem:{bow:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"FireballWave",lvl:1,Enabled:0b,Rarity:3,ForItem:{crossbow:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LastLife",lvl:1,Enabled:0b,Rarity:3,ForItem:{leggings:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LavaWalker",lvl:3,Enabled:0b,Rarity:3,ForItem:{boots:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LifePlus",lvl:5,Enabled:0b,Rarity:3,ForItem:{chestplate:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LifeSteal",lvl:1,Enabled:0b,Rarity:3,ForItem:{sword:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Multicolor",lvl:1,Enabled:0b,Rarity:3,ForItem:{shears:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Peaks",lvl:1,Enabled:0b,Rarity:3,ForItem:{shield:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Replant",lvl:1,Enabled:0b,Rarity:3,ForItem:{hoe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"SoulReaper",lvl:3,Enabled:0b,Rarity:3,ForItem:{hoe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Timber",lvl:1,Enabled:0b,Rarity:3,ForItem:{axe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"TimeBreaker",lvl:2,Enabled:0b,Rarity:3,ForItem:{helmet:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"VeinMiner",lvl:1,Enabled:0b,Rarity:3,ForItem:{pickaxe:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Waterjet",lvl:1,Enabled:0b,Rarity:3,ForItem:{trident:1b},Sell:5}
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"XpBoost",lvl:1,Enabled:0b,Rarity:3,ForItem:{sword:1b,trident:1b,axe:1b},Sell:5}



#Custom Curses
# They don't need "Enabled" or "Rarity" nbt
data modify storage teplus:register Custom[].Curse append value {id:"Exhaustion",lvl:1,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b},Sell:5}
data modify storage teplus:register Custom[].Curse append value {id:"Fear",lvl:1,ForItem:{sword:1b,axe:1b,trident:1b,bow:1b,crossbow:1b},Sell:5}
data modify storage teplus:register Custom[].Curse append value {id:"Fragile",lvl:1,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b,sword:1b,trident:1b,bow:1b,crossbow:1b,helmet:1b,chestplate:1b,leggings:1b,boots:1b,elytra:1b,shield:1b},Sell:5}
data modify storage teplus:register Custom[].Curse append value {id:"Sensitive",lvl:1,ForItem:{helmet:1b,chestplate:1b,leggings:1b,boots:1b,elytra:1b,shield:1b},Sell:5}
data modify storage teplus:register Custom[].Curse append value {id:"Slippery",lvl:1,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b,sword:1b,trident:1b,bow:1b,crossbow:1b},Sell:5}