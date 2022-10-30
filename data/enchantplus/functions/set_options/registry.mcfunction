##=========REGISTER THE ENCHANTMENTS=========##
#We create a storage containing information about the enchantment
# is contained in an array in a single "{}"

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

#CustomCurses doesn't have an enabled parameter or structure parameter,
# they aren't divided between low, average or strong

##OPTIONAL##
#-Structure:[{all:1b},{acient_city:1b,add:10}] if set to "all" it can 
# spawn in any vanilla structure. 
# If it doesn't have "all" then it checks for other structure types
#  ,in case it has an exclusive structure, only then it can generate
# in that structure chest.
#Each strcuture can have the "add" nbt, that will make that enchantment
# more likely to appear in that specific chest loot-table

#If the main "Structure" array isn't there, the enchantment is impossible
# to obtain from any chest.
#---(ATM) Not all the structures support every single enchantment rarity---#

#-Sell:1, is the nbt data that will allow that enchantment to be offered
# by a Advanced Enchanter. If it isn't there, that means that it can't be
# obtained by that method. Keep in mind that no matter the max level of the
# enchantment, the Advanced Enchanter will only give the enchantment at lvl 1!!

#-NoEnch:1b, if this is present in the string, then this enchantment won't
# be able to obtain through the enchanting table (no matter if it is
# enchanting a book or an item)

#-NoDrop:1b, if this is present in the string, then this enchantment won't
# be able to obtain through enchanted mobs

#-Incompatible:[{}], You can specify enchantments IDs in this array. Any
# vanilla, custom enchantment or curse wont be compatible with that enchantment.
# Keep in mind that this will only prevent that enchantment from combining
#  with the ones in the Array IN THE ENCHANTING TABLE SETUP for items. The 
#  technical anvil use another method.

#Clear it to initialize
data modify storage teplus:register Custom set value []
#Since this storage will always clear on each load, update the
# "Enabled" nbt value


##-----Append the values for each storage-----##
#Low enchantments = Rarity:1
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Agility",lvl:3,Enabled:0b,Rarity:1,ForItem:{boots:1b},Sell:5,Structure:[{all:1b},{shipwreck:1b,add:2},{underwater_ruin:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Agility"}].Enabled byte 1 run scoreboard players get #aglt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"AntiExplosion",lvl:1,Enabled:0b,Rarity:1,ForItem:{sword:1b,bow:1b,helmet:1b},Sell:5,Structure:[{all:1b},{shipwreck:1b},{underwater_ruin:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"AntiExplosion"}].Enabled byte 1 run scoreboard players get #antexp Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"BigPath",lvl:1,Enabled:0b,Rarity:1,ForItem:{shovel:1b},Sell:5,Structure:[{all:1b},{village:1b,add:2}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"BigPath"}].Enabled byte 1 run scoreboard players get #bgpt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"BrightVision",lvl:1,Enabled:0b,Rarity:1,ForItem:{helmet:1b},Sell:5,Structure:[{all:1b},{ancient_city:1b},{fortress:1b},{shipwreck:1b},{underwater_ruin:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"BrightVision"}].Enabled byte 1 run scoreboard players get #brvis Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Chopping",lvl:1,Enabled:0b,Rarity:1,ForItem:{axe:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b},{village:1b,add:2}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Chopping"}].Enabled byte 1 run scoreboard players get #chop Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Excavator",lvl:1,Enabled:0b,Rarity:1,ForItem:{shovel:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b,add:2},{shipwreck:1b,add:1},{village:1b,add:1}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Excavator"}].Enabled byte 1 run scoreboard players get #exc Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"FlamingSkin",lvl:1,Enabled:0b,Rarity:1,ForItem:{chestplate:1b},Sell:5,Structure:[{all:1b},{fortress:1b,add:15}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"FlamingSkin"}].Enabled byte 1 run scoreboard players get #flskn Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"GrandTilling",lvl:1,Enabled:0b,Rarity:1,ForItem:{hoe:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b},{village:1b,add:2}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"GrandTilling"}].Enabled byte 1 run scoreboard players get #gndtl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"HarvestingPlus",lvl:1,Enabled:0b,Rarity:1,ForItem:{hoe:1b},Sell:5,Structure:[{all:1b},{fortress:1b},{village:1b,add:2}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"HarvestingPlus"}].Enabled byte 1 run scoreboard players get #hrvpl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"LastStand",lvl:1,Enabled:0b,Rarity:1,ForItem:{sword:1b},Sell:5,Structure:[{all:1b},{fortress:1b,add:1},{mansion:1b,add:1}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"LastStand"}].Enabled byte 1 run scoreboard players get #lstnd Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Leaping",lvl:3,Enabled:0b,Rarity:1,ForItem:{leggings:1b},Sell:5,Structure:[{all:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Leaping"}].Enabled byte 1 run scoreboard players get #leap Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"MarineGrace",lvl:2,Enabled:0b,Rarity:1,ForItem:{trident:1b},Sell:5,Structure:[{all:1b},{shipwreck:1b,add:2},{underwater_ruin:1b,add:2}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"MarineGrace"}].Enabled byte 1 run scoreboard players get #mrgc Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"PoisonAspect",lvl:3,Enabled:0b,Rarity:1,ForItem:{sword:1b,trident:1b},Sell:5,Structure:[{all:1b},{Exlusive:[{ancient_city:1b},{desert_pyramid:1b,add:3},{fortress:1b,add:2}]}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"PoisonAspect"}].Enabled byte 1 run scoreboard players get #pst Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Scyther",lvl:2,Enabled:0b,Rarity:1,ForItem:{hoe:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b,add:2},{village:1b,add:1}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Scyther"}].Enabled byte 1 run scoreboard players get #sytr Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"SwimPlus",lvl:1,Enabled:0b,Rarity:1,ForItem:{leggings:1b},Sell:5,Structure:[{all:1b},{shipwreck:1b,add:2},{underwater_ruin:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"SwimPlus"}].Enabled byte 1 run scoreboard players get #smpl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Transmission",lvl:5,Enabled:0b,Rarity:1,ForItem:{axe:1b},Sell:5,Structure:[{all:1b},{ancient_city:1b},{end_city:1b,add:8},{fortress:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Transmission"}].Enabled byte 1 run scoreboard players get #trms Enchopts



#Average enchantments = Rarity:2
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AccuracyShot",lvl:1,Enabled:0b,Rarity:2,ForItem:{bow:1b,crossbow:1b},Sell:5,Structure:[{all:1b},{fortress:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"AccuracyShot"}].Enabled byte 1 run scoreboard players get #accshot Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AntiKnockback",lvl:2,Enabled:0b,Rarity:2,ForItem:{shield:1b},Sell:5,Structure:[{all:1b},{ancient_city:1b},{fortress:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"AntiKnockback"}].Enabled byte 1 run scoreboard players get #atkb Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Arachnid",lvl:1,Enabled:0b,Rarity:2,ForItem:{bow:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b,add:3}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Arachnid"}].Enabled byte 1 run scoreboard players get #arch Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AutoFeed",lvl:1,Enabled:0b,Rarity:2,ForItem:{chestplate:1b},Sell:5,Structure:[{all:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"AutoFeed"}].Enabled byte 1 run scoreboard players get #autfd Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AutoSmelt",lvl:1,Enabled:0b,Rarity:2,ForItem:{pickaxe:1b,axe:1b,shovel:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b},{fortress:1b,add:4},{village:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"AutoSmelt"}].Enabled byte 1 run scoreboard players get #autsml Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"BloodyBlade",lvl:1,Enabled:0b,Rarity:2,ForItem:{sword:1b},Sell:5,Structure:[{all:1b},{fortress:1b,add:1}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"BloodyBlade"}].Enabled byte 1 run scoreboard players get #bobl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Dasher",lvl:2,Enabled:0b,Rarity:2,ForItem:{boots:1b},Sell:5,Structure:[{all:1b},{fortress:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Dasher"}].Enabled byte 1 run scoreboard players get #dasher Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"HardnessPlus",lvl:3,Enabled:0b,Rarity:2,ForItem:{shield:1b},Sell:5,Structure:[{all:1b},{ancient_city:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"HardnessPlus"}].Enabled byte 1 run scoreboard players get #hdns Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Haste",lvl:2,Enabled:0b,Rarity:2,ForItem:{pickaxe:1b,axe:1b,shovel:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b,add:2},{fortress:1b,add:1},{village:1b,add:1}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Haste"}].Enabled byte 1 run scoreboard players get #haste Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Magnet",lvl:1,Enabled:0b,Rarity:2,ForItem:{helmet:1b},Sell:5,Structure:[{all:1b},{ancient_city:1b},{fortress:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Magnet"}].Enabled byte 1 run scoreboard players get #mgnt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"MiningPlus",lvl:1,Enabled:0b,Rarity:2,ForItem:{pickaxe:1b},Sell:5,Structure:[{all:1b},{ancient_city:1b},{desert_pyramid:1b,add:2},{village:1b}],Incompatible:[{id:"VeinMiner"}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"MiningPlus"}].Enabled byte 1 run scoreboard players get #mnpl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Recovery",lvl:2,Enabled:0b,Rarity:2,ForItem:{leggings:1b},Sell:5,Structure:[{all:1b},{village:1b,add:1}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Recovery"}].Enabled byte 1 run scoreboard players get #rcv Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"ShockFangs",lvl:1,Enabled:0b,Rarity:2,ForItem:{crossbow:1b},Sell:5,Structure:[{all:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"ShockFangs"}].Enabled byte 1 run scoreboard players get #skfg Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"SkyWalk",lvl:1,Enabled:0b,Rarity:2,ForItem:{boots:1b},Sell:5,Structure:[{all:1b},{fortress:1b,add:1}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"SkyWalk"}].Enabled byte 1 run scoreboard players get #skwk Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Sniper",lvl:1,Enabled:0b,Rarity:2,ForItem:{crossbow:1b},Sell:5,Structure:[{all:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Sniper"}].Enabled byte 1 run scoreboard players get #snp Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Splatter",lvl:3,Enabled:0b,Rarity:2,ForItem:{fishing_rod:1b},Sell:5,Structure:[{ancient_city:1b,add:4},{shipwreck:1b,add:12},{underwater_ruin:1b,add:10}],NoDrop:1b}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Splatter"}].Enabled byte 1 run scoreboard players get #sptr Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Striker",lvl:3,Enabled:0b,Rarity:2,ForItem:{axe:1b},Sell:5,Structure:[{all:1b},{ancient_city:1b},{village:1b,add:2},{mansion:1b,add:2}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Striker"}].Enabled byte 1 run scoreboard players get #strk Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"TurtleStiffness",lvl:1,Enabled:0b,Rarity:2,ForItem:{shield:1b},Sell:5,Structure:[{all:1b},{ancient_city:1b},{underwater_ruin:1b,add:3}]}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"TurtleStiffness"}].Enabled byte 1 run scoreboard players get #trsf Enchopts



#Strong enchantments = Rarity:3
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"AntiVenom",lvl:2,Enabled:0b,Rarity:3,ForItem:{chestplate:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b,add:3}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"AntiVenom"}].Enabled byte 1 run scoreboard players get #antvn Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Armored",lvl:2,Enabled:0b,Rarity:3,ForItem:{elytra:1b},Sell:5,Structure:[{ancient_city:1b,add:5},{end_city:1b,add:20}],NoDrop:1b}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Armored"}].Enabled byte 1 run scoreboard players get #armd Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"AttackSpeed",lvl:3,Enabled:0b,Rarity:3,ForItem:{sword:1b,trident:1b},Sell:5,Structure:[{all:1b},{Exlusive:[{bastion:1b}]}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"AttackSpeed"}].Enabled byte 1 run scoreboard players get #aksp Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Explosive",lvl:1,Enabled:0b,Rarity:3,ForItem:{bow:1b},Sell:5,Structure:[{all:1b},{bastion:1b,add:2}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Explosive"}].Enabled byte 1 run scoreboard players get #expl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"FireballWave",lvl:1,Enabled:0b,Rarity:3,ForItem:{crossbow:1b},Sell:5,Structure:[{all:1b},{bastion:1b,add:9},{fortress:1b,add:8}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"FireballWave"}].Enabled byte 1 run scoreboard players get #frbw Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LastLife",lvl:1,Enabled:0b,Rarity:3,ForItem:{leggings:1b},Sell:5,Structure:[{all:1b},{mansion:1b,add:1}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"LastLife"}].Enabled byte 1 run scoreboard players get #lstlf Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LavaWalker",lvl:3,Enabled:0b,Rarity:3,ForItem:{boots:1b},Sell:5,Structure:[{all:1b},{bastion:1b,add:9}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"LavaWalker"}].Enabled byte 1 run scoreboard players get #lvwk Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LifePlus",lvl:5,Enabled:0b,Rarity:3,ForItem:{chestplate:1b},Sell:5,Structure:[{all:1b},{bastion:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"LifePlus"}].Enabled byte 1 run scoreboard players get #lfps Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LifeSteal",lvl:1,Enabled:0b,Rarity:3,ForItem:{sword:1b},Sell:5,Structure:[{all:1b},{bastion:1b,add:1}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"LifeSteal"}].Enabled byte 1 run scoreboard players get #lfstl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Multicolor",lvl:1,Enabled:0b,Rarity:3,ForItem:{shears:1b},Sell:5,Structure:[{ancient_city:1b,add:5},{village:1b,add:13}],NoDrop:1b}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Multicolor"}].Enabled byte 1 run scoreboard players get #mlcl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Peaks",lvl:1,Enabled:0b,Rarity:3,ForItem:{shield:1b},Sell:5,Structure:[{all:1b},{bastion:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Peaks"}].Enabled byte 1 run scoreboard players get #pks Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Replant",lvl:1,Enabled:0b,Rarity:3,ForItem:{hoe:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b},{village:1b,add:2}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Replant"}].Enabled byte 1 run scoreboard players get #rplt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"SoulReaper",lvl:3,Enabled:0b,Rarity:3,ForItem:{hoe:1b},Sell:5,Structure:[{all:1b},{bastion:1b,add:2}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"SoulReaper"}].Enabled byte 1 run scoreboard players get #slrp Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Timber",lvl:1,Enabled:0b,Rarity:3,ForItem:{axe:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Timber"}].Enabled byte 1 run scoreboard players get #tmbr Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"TimeBreaker",lvl:2,Enabled:0b,Rarity:3,ForItem:{helmet:1b},Sell:5,Structure:[{all:1b},{bastion:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"TimeBreaker"}].Enabled byte 1 run scoreboard players get #tmbrk Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"VeinMiner",lvl:1,Enabled:0b,Rarity:3,ForItem:{pickaxe:1b},Sell:5,Structure:[{all:1b},{desert_pyramid:1b},{village:1b}],Incompatible:[{id:"MiningPlus"}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"VeinMiner"}].Enabled byte 1 run scoreboard players get #vnmr Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Waterjet",lvl:1,Enabled:0b,Rarity:3,ForItem:{trident:1b},Sell:5,Structure:[{all:1b},{underwater_ruin:1b,add:3}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Waterjet"}].Enabled byte 1 run scoreboard players get #wtjt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"XpBoost",lvl:1,Enabled:0b,Rarity:3,ForItem:{sword:1b,trident:1b,axe:1b},Sell:5,Structure:[{all:1b},{bastion:1b}]}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"XpBoost"}].Enabled byte 1 run scoreboard players get #xpbt Enchopts




#Custom Curses
# They don't need "Enabled" or "Rarity" nbt
data modify storage teplus:register Custom[].Curse append value {id:"Exhaustion",lvl:1,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b},Sell:5,Structure:[{all:1b}]}
data modify storage teplus:register Custom[].Curse append value {id:"Fear",lvl:1,ForItem:{sword:1b,axe:1b,trident:1b,bow:1b,crossbow:1b},Sell:5,Structure:[{all:1b}]}
data modify storage teplus:register Custom[].Curse append value {id:"Fragile",lvl:1,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b,sword:1b,trident:1b,bow:1b,crossbow:1b,helmet:1b,chestplate:1b,leggings:1b,boots:1b,elytra:1b,shield:1b},Sell:5,Structure:[{all:1b}]}
data modify storage teplus:register Custom[].Curse append value {id:"Sensitive",lvl:1,ForItem:{helmet:1b,chestplate:1b,leggings:1b,boots:1b,elytra:1b,shield:1b,horse_armor:1b},Sell:5,Structure:[{all:1b}]}
data modify storage teplus:register Custom[].Curse append value {id:"Slippery",lvl:1,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b,sword:1b,trident:1b,bow:1b,crossbow:1b},Sell:5,Structure:[{all:1b}]}