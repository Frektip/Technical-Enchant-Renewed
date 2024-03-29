##=====================REGISTER THE ENCHANTMENTS=====================##
#We create a storage containing information about every enchantment

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
#Charge: any number (Amount of Base Charge removed from the enchanting table)

#CustomCurses doesn't have an enabled parameter and they aren't divided
# between low, average or strong arrays.

##OPTIONAL##
#-Structure:[{all:1b},{id:"minecraft:acient_city",add:10}] if set to "all" it can 
# spawn in any vanilla structure. You MUST put {all:1b} first if you use it
# If it doesn't have "all" then it checks for other structure types
#  ,even custom ones.
#Each strcuture can have the "add" nbt, that will make that enchantment
# more likely to appear in that specific chest loot-table.
##---- The current structure list id's are: ----##

#    "minecraft:mineshaft"
#    "minecraft:ancient_city"
#    "minecraft:bastion"
#    "minecraft:buried_treasure"
#    "minecraft:desert_pyramid"
#    "minecraft:end_city"
#    "minecraft:igloo"
#    "minecraft:jungle_temple"
#    "minecraft:fortress"
#    "minecraft:outpost"
#    "minecraft:ruined_portal"
#    "minecraft:shipwreck"
#    "minecraft:dungeon"
#    "minecraft:stronghold"
#    "minecraft:stronghold_library"
#    "minecraft:underwater_ruin"
#    "minecraft:village"
#    "minecraft:mansion"


#If the main "Structure" array isn't there, the enchantment is impossible
# to obtain from any chest.

#-Sell:1, is the nbt data that will allow that enchantment to be offered
# by a Advanced Enchanter. If it isn't there, that means that it can't be
# obtained by that method. Keep in mind that no matter the max level of the
# enchantment, the Advanced Enchanter will only sell A page of power at lvl 1!!

#-NoEnch:1b, if this is present in the string, then this enchantment won't
# be able to obtain through the enchanting table (no matter if it is
# enchanting a book or an item)

#-NoDrop:1b, if this is present in the string, then this enchantment won't
# be able to obtain through enchanted mobs

#-Incompatible:[{}], You can specify enchantments IDs in this array. Any
# vanilla, custom enchantment or curse wont be compatible with that enchantment.
# Keep in mind that this will only prevent that enchantment from combining
#  with the ones in the Array IN THE ENCHANTING TABLE SETUP for items only. The 
#  technical anvil uses another method, so keep that in mind.
##===================================================================##









#Clear it to initialize
data modify storage teplus:register Custom set value []
#Since this storage will always clear on each load, update the
# "Enabled" nbt value. I can also do the same for the Max level for
# each enchantment but personally I won't because that also will update
# the values for the enchanting table system, so yeah. NO


##-----Append the values for each storage-----##
#Low enchantments = Rarity:1
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Agility",lvl:3,Enabled:0b,Rarity:1,ForItem:{boots:1b},Sell:3,Structure:[{id:"minecraft:shipwreck",add:2},{id:"minecraft:underwater_ruin"}],Charge:12}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Agility"}].Enabled byte 1 run scoreboard players get #aglt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"AntiExplosion",lvl:1,Enabled:0b,Rarity:1,ForItem:{sword:1b,bow:1b,helmet:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:mineshaft",add:4},{id:"minecraft:shipwreck"},{id:"minecraft:underwater_ruin"}],Charge:8}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"AntiExplosion"}].Enabled byte 1 run scoreboard players get #antexp Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"BigPath",lvl:1,Enabled:0b,Rarity:1,ForItem:{shovel:1b},Sell:2,Structure:[{id:"minecraft:village",add:2}],Charge:8}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"BigPath"}].Enabled byte 1 run scoreboard players get #bgpt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"BrightVision",lvl:1,Enabled:0b,Rarity:1,ForItem:{helmet:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:mineshaft",add:4},{id:"minecraft:ancient_city",add:5},{id:"minecraft:fortress"}],Charge:15}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"BrightVision"}].Enabled byte 1 run scoreboard players get #brvis Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Chopping",lvl:1,Enabled:0b,Rarity:1,ForItem:{axe:1b},Sell:2,Structure:[{id:"minecraft:desert_pyramid"},{id:"minecraft:jungle_temple"},{id:"minecraft:village",add:2}],Charge:10}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Chopping"}].Enabled byte 1 run scoreboard players get #chop Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Excavator",lvl:1,Enabled:0b,Rarity:1,ForItem:{shovel:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:desert_pyramid",add:3},{id:"minecraft:shipwreck",add:1},{id:"minecraft:village",add:1}],Charge:12}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Excavator"}].Enabled byte 1 run scoreboard players get #exc Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"FlamingSkin",lvl:1,Enabled:0b,Rarity:1,ForItem:{chestplate:1b},Sell:4,Structure:[{all:1b},{id:"minecraft:bastion",add:10},{id:"minecraft:fortress",add:15}],Charge:9}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"FlamingSkin"}].Enabled byte 1 run scoreboard players get #flskn Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"GrandTilling",lvl:1,Enabled:0b,Rarity:1,ForItem:{hoe:1b},Sell:2,Structure:[{id:"minecraft:desert_pyramid"},{id:"minecraft:village",add:2}],Charge:7}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"GrandTilling"}].Enabled byte 1 run scoreboard players get #gndtl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"HarvestingPlus",lvl:1,Enabled:0b,Rarity:1,ForItem:{hoe:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:fortress"},{id:"minecraft:village",add:2}],Charge:8}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"HarvestingPlus"}].Enabled byte 1 run scoreboard players get #hrvpl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"LastStand",lvl:1,Enabled:0b,Rarity:1,ForItem:{sword:1b},Sell:3,Structure:[{id:"minecraft:stronghold"},{id:"minecraft:dungeon"},{id:"minecraft:fortress",add:1},{id:"minecraft:mansion",add:1}],Charge:9}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"LastStand"}].Enabled byte 1 run scoreboard players get #lstnd Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Leaping",lvl:3,Enabled:0b,Rarity:1,ForItem:{leggings:1b},Sell:3,Structure:[{all:1b}],Charge:11}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Leaping"}].Enabled byte 1 run scoreboard players get #leap Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"MarineGrace",lvl:2,Enabled:0b,Rarity:1,ForItem:{trident:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:shipwreck",add:2},{id:"minecraft:underwater_ruin",add:2}],Charge:14}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"MarineGrace"}].Enabled byte 1 run scoreboard players get #mrgc Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"PoisonAspect",lvl:3,Enabled:0b,Rarity:1,ForItem:{sword:1b,trident:1b},Sell:4,Structure:[{all:1b},{id:"minecraft:mineshaft",add:3},{id:"minecraft:jungle_temple",add:5},{id:"minecraft:ancient_city"},{id:"minecraft:desert_pyramid",add:3},{id:"minecraft:fortress",add:2}],Charge:13}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"PoisonAspect"}].Enabled byte 1 run scoreboard players get #pst Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Scyther",lvl:2,Enabled:0b,Rarity:1,ForItem:{hoe:1b},Sell:2,Structure:[{id:"minecraft:desert_pyramid",add:2},{id:"minecraft:village",add:1},{id:"minecraft:jungle_temple",add:1}],Charge:10}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Scyther"}].Enabled byte 1 run scoreboard players get #sytr Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"SwimPlus",lvl:1,Enabled:0b,Rarity:1,ForItem:{leggings:1b},Sell:2,Structure:[{id:"minecraft:shipwreck",add:2},{id:"minecraft:underwater_ruin",add:5}],Charge:11}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"SwimPlus"}].Enabled byte 1 run scoreboard players get #smpl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"Transmission",lvl:5,Enabled:0b,Rarity:1,ForItem:{axe:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:ancient_city"},{id:"minecraft:end_city",add:8},{id:"minecraft:bastion"}],Charge:9}
execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"Transmission"}].Enabled byte 1 run scoreboard players get #trms Enchopts



#Average enchantments = Rarity:2
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AccuracyShot",lvl:1,Enabled:0b,Rarity:2,ForItem:{bow:1b,crossbow:1b},Sell:3,Structure:[{id:"minecraft:jungle_temple",add:1},{id:"minecraft:fortress"},{id:"minecraft:bastion"}],Charge:18}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"AccuracyShot"}].Enabled byte 1 run scoreboard players get #accshot Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AntiKnockback",lvl:2,Enabled:0b,Rarity:2,ForItem:{shield:1b},Sell:5,Structure:[{id:"minecraft:ancient_city"},{id:"minecraft:ruined_portal"}],Charge:23}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"AntiKnockback"}].Enabled byte 1 run scoreboard players get #atkb Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Arachnid",lvl:1,Enabled:0b,Rarity:2,ForItem:{bow:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:outpost",add:7},{id:"minecraft:desert_pyramid",add:3}],Charge:16}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Arachnid"}].Enabled byte 1 run scoreboard players get #arch Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AutoFeed",lvl:1,Enabled:0b,Rarity:2,ForItem:{chestplate:1b},Sell:2,Structure:[{all:1b}],Charge:18}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"AutoFeed"}].Enabled byte 1 run scoreboard players get #autfd Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"AutoSmelt",lvl:1,Enabled:0b,Rarity:2,ForItem:{pickaxe:1b,axe:1b,shovel:1b},Sell:6,Structure:[{all:1b},{id:"minecraft:desert_pyramid"},{id:"minecraft:end_city"},{id:"minecraft:bastion",add:4},{id:"minecraft:village"}],Charge:26}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"AutoSmelt"}].Enabled byte 1 run scoreboard players get #autsml Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"BloodyBlade",lvl:1,Enabled:0b,Rarity:2,ForItem:{sword:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:fortress",add:1},{id:"minecraft:bastion",add:2},{id:"minecraft:ruined_portal"}],Charge:19}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"BloodyBlade"}].Enabled byte 1 run scoreboard players get #bobl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Dasher",lvl:2,Enabled:0b,Rarity:2,ForItem:{boots:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:bastion"}],Charge:17}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Dasher"}].Enabled byte 1 run scoreboard players get #dasher Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"HardnessPlus",lvl:3,Enabled:0b,Rarity:2,ForItem:{shield:1b},Sell:3,Structure:[{id:"minecraft:ancient_city"},{id:"minecraft:end_city"}],Charge:18}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"HardnessPlus"}].Enabled byte 1 run scoreboard players get #hdns Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Haste",lvl:2,Enabled:0b,Rarity:2,ForItem:{pickaxe:1b,axe:1b,shovel:1b},Sell:4,Structure:[{all:1b},{id:"minecraft:desert_pyramid",add:2},{id:"minecraft:fortress",add:1},{id:"minecraft:mineshaft",add:3}],Charge:22}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Haste"}].Enabled byte 1 run scoreboard players get #haste Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Magnet",lvl:1,Enabled:0b,Rarity:2,ForItem:{helmet:1b},Sell:4,Structure:[{all:1b},{id:"minecraft:ancient_city"},{id:"minecraft:end_city"}],Charge:25}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Magnet"}].Enabled byte 1 run scoreboard players get #mgnt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"MiningPlus",lvl:1,Enabled:0b,Rarity:2,ForItem:{pickaxe:1b},Sell:7,Structure:[{id:"minecraft:ancient_city"},{id:"minecraft:desert_pyramid",add:2},{id:"minecraft:village"},{id:"minecraft:mineshaft"}],Incompatible:[{id:"VeinMiner"},{id:"Compact"}],Charge:28}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"MiningPlus"}].Enabled byte 1 run scoreboard players get #mnpl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Recovery",lvl:2,Enabled:0b,Rarity:2,ForItem:{leggings:1b},Sell:3,Structure:[{all:1b},{all:1b}],Charge:21}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Recovery"}].Enabled byte 1 run scoreboard players get #rcv Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"ShockFangs",lvl:1,Enabled:0b,Rarity:2,ForItem:{crossbow:1b},Sell:2,Structure:[{all:1b},{id:"minecraft:outpost",add:7},{id:"minecraft:mansion",add:5}],Charge:18}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"ShockFangs"}].Enabled byte 1 run scoreboard players get #skfg Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"SkyWalk",lvl:1,Enabled:0b,Rarity:2,ForItem:{boots:1b},Sell:6,Structure:[{all:1b},{id:"minecraft:end_city",add:4}],Charge:20}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"SkyWalk"}].Enabled byte 1 run scoreboard players get #skwk Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Sniper",lvl:1,Enabled:0b,Rarity:2,ForItem:{crossbow:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:outpost",add:7}],Charge:17}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Sniper"}].Enabled byte 1 run scoreboard players get #snp Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Splatter",lvl:3,Enabled:0b,Rarity:2,ForItem:{fishing_rod:1b},Structure:[{all:1b},{id:"minecraft:ancient_city",add:4},{id:"minecraft:shipwreck",add:12},{id:"minecraft:underwater_ruin",add:10}],NoDrop:1b,Charge:32}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Splatter"}].Enabled byte 1 run scoreboard players get #sptr Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"Striker",lvl:3,Enabled:0b,Rarity:2,ForItem:{axe:1b},Sell:5,Structure:[{all:1b},{id:"minecraft:ancient_city",add:6},{id:"minecraft:village",add:3},{id:"minecraft:mansion",add:4}],Charge:19}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"Striker"}].Enabled byte 1 run scoreboard players get #strk Enchopts
data modify storage teplus:register Custom[].Enchantment[].Average append value {id:"TurtleStiffness",lvl:1,Enabled:0b,Rarity:2,ForItem:{shield:1b},Sell:4,Structure:[{id:"minecraft:underwater_ruin",add:3}],Charge:20}
execute store result storage teplus:register Custom[].Enchantment[].Average[{id:"TurtleStiffness"}].Enabled byte 1 run scoreboard players get #trsf Enchopts



#Strong enchantments = Rarity:3
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"AntiVenom",lvl:2,Enabled:0b,Rarity:3,ForItem:{chestplate:1b},Sell:7,Structure:[{id:"minecraft:mineshaft",add:3},{id:"minecraft:desert_pyramid",add:3}],Charge:30}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"AntiVenom"}].Enabled byte 1 run scoreboard players get #antvn Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Armored",lvl:2,Enabled:0b,Rarity:3,ForItem:{elytra:1b},Structure:[{id:"minecraft:ancient_city",add:2},{id:"minecraft:end_city",add:20}],NoDrop:1b,Charge:50}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Armored"}].Enabled byte 1 run scoreboard players get #armd Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"AttackSpeed",lvl:3,Enabled:0b,Rarity:3,ForItem:{sword:1b,trident:1b},Sell:8,Structure:[{id:"minecraft:igloo"},{id:"minecraft:bastion"}],Incompatible:[{all:1b},{id:"minecraft:sharpness"}],Charge:34}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"AttackSpeed"}].Enabled byte 1 run scoreboard players get #aksp Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Explosive",lvl:1,Enabled:0b,Rarity:3,ForItem:{bow:1b},Sell:9,Structure:[{all:1b},{id:"minecraft:mineshaft",add:2}],Charge:42}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Explosive"}].Enabled byte 1 run scoreboard players get #expl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"FireballWave",lvl:1,Enabled:0b,Rarity:3,ForItem:{crossbow:1b},Sell:4,Structure:[{id:"minecraft:ruined_portal"},{id:"minecraft:bastion",add:9},{id:"minecraft:fortress",add:8}],Charge:34}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"FireballWave"}].Enabled byte 1 run scoreboard players get #frbw Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LastLife",lvl:1,Enabled:0b,Rarity:3,ForItem:{leggings:1b},Sell:4,Structure:[{id:"minecraft:mansion",add:1}],Charge:38}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"LastLife"}].Enabled byte 1 run scoreboard players get #lstlf Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LavaWalker",lvl:1,Enabled:0b,Rarity:3,ForItem:{boots:1b},Sell:3,Structure:[{all:1b},{id:"minecraft:bastion",add:12}],Charge:39}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"LavaWalker"}].Enabled byte 1 run scoreboard players get #lvwk Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LifePlus",lvl:5,Enabled:0b,Rarity:3,ForItem:{chestplate:1b},Sell:8,Structure:[{all:1b},{id:"minecraft:stronghold_library",add:12},{id:"minecraft:stronghold",add:5}],Charge:46}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"LifePlus"}].Enabled byte 1 run scoreboard players get #lfps Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"LifeSteal",lvl:1,Enabled:0b,Rarity:3,ForItem:{sword:1b},Sell:3,Structure:[{id:"minecraft:bastion",add:1}],Charge:37}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"LifeSteal"}].Enabled byte 1 run scoreboard players get #lfstl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Multicolor",lvl:1,Enabled:0b,Rarity:3,ForItem:{shears:1b},Structure:[{all:1b},{id:"minecraft:ancient_city",add:5},{id:"minecraft:village",add:13}],NoDrop:1b,Charge:47}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Multicolor"}].Enabled byte 1 run scoreboard players get #mlcl Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Peaks",lvl:1,Enabled:0b,Rarity:3,ForItem:{shield:1b},Sell:4,Structure:[{id:"minecraft:jungle_temple"},{id:"minecraft:bastion"}],Charge:40}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Peaks"}].Enabled byte 1 run scoreboard players get #pks Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Replant",lvl:1,Enabled:0b,Rarity:3,ForItem:{hoe:1b},Sell:5,Structure:[{all:1b},{id:"minecraft:jungle_temple",add:2},{id:"minecraft:village",add:3}],Charge:38}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Replant"}].Enabled byte 1 run scoreboard players get #rplt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"SoulReaper",lvl:3,Enabled:0b,Rarity:3,ForItem:{hoe:1b},Sell:7,Structure:[{id:"minecraft:stronghold_library",add:10},{id:"minecraft:bastion",add:2}],Charge:42}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"SoulReaper"}].Enabled byte 1 run scoreboard players get #slrp Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Timber",lvl:1,Enabled:0b,Rarity:3,ForItem:{axe:1b},Sell:4,Structure:[{id:"minecraft:jungle_temple"}],Charge:41}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Timber"}].Enabled byte 1 run scoreboard players get #tmbr Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"TimeBreaker",lvl:2,Enabled:0b,Rarity:3,ForItem:{helmet:1b},Sell:3,Structure:[{id:"minecraft:end_city"},{id:"minecraft:stronghold"},{id:"minecraft:dungeon"}],Charge:34}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"TimeBreaker"}].Enabled byte 1 run scoreboard players get #tmbrk Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"VeinMiner",lvl:1,Enabled:0b,Rarity:3,ForItem:{pickaxe:1b},Sell:5,Structure:[{all:1b},{id:"minecraft:mineshaft"},{id:"minecraft:stronghold_library",add:15}],Incompatible:[{id:"MiningPlus"},{id:"Compact"}],Charge:42}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"VeinMiner"}].Enabled byte 1 run scoreboard players get #vnmr Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"Waterjet",lvl:1,Enabled:0b,Rarity:3,ForItem:{trident:1b},Sell:6,Structure:[{id:"minecraft:underwater_ruin",add:3},{id:"minecraft:shipwreck",add:5}],Charge:47}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"Waterjet"}].Enabled byte 1 run scoreboard players get #wtjt Enchopts
data modify storage teplus:register Custom[].Enchantment[].Strong append value {id:"XpBoost",lvl:3,Enabled:0b,Rarity:3,ForItem:{sword:1b,trident:1b,axe:1b},Sell:5,Structure:[{all:1b},{id:"minecraft:dungeon",add:8}],Charge:43}
execute store result storage teplus:register Custom[].Enchantment[].Strong[{id:"XpBoost"}].Enabled byte 1 run scoreboard players get #xpbt Enchopts




#Custom Curses
# They don't need "Enabled" or "Rarity" nbt
data modify storage teplus:register Custom[].Curse append value {id:"Exhaustion",lvl:1,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b},Sell:2,Structure:[{all:1b}]}
data modify storage teplus:register Custom[].Curse append value {id:"Fear",lvl:1,ForItem:{sword:1b,axe:1b,trident:1b,bow:1b,crossbow:1b},Sell:3,Structure:[{all:1b}]}
data modify storage teplus:register Custom[].Curse append value {id:"Fragile",lvl:1,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b,sword:1b,trident:1b,bow:1b,crossbow:1b,helmet:1b,chestplate:1b,leggings:1b,boots:1b,elytra:1b,shield:1b},Sell:2,Structure:[{all:1b}]}
data modify storage teplus:register Custom[].Curse append value {id:"Sensitive",lvl:1,ForItem:{helmet:1b,chestplate:1b,leggings:1b,boots:1b,elytra:1b,shield:1b,horse_armor:1b},Sell:3,Structure:[{all:1b}]}
data modify storage teplus:register Custom[].Curse append value {id:"Slippery",lvl:1,ForItem:{pickaxe:1b,axe:1b,shovel:1b,hoe:1b,shears:1b,fishing_rod:1b,sword:1b,trident:1b,bow:1b,crossbow:1b},Sell:3,Structure:[{all:1b}]}