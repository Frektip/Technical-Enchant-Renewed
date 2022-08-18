
##===============================CHECK CONDITIONS===============================##
#First: if the enchantment is enabled
#Second: if the enchanting tier score [according to enchantment rarity]
# -#teplus.rarity teplus.data 
#     1..=at least need a Tier 1 enchanting setup (low enchantment)
#     2..=at least need a Tier 2 enchanting setup (average enchantment)
#     3..=at least need a Tier 3 enchanting setup (strong enchantment)
##==============================================================================##
execute if score #accshot Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"AccuracyShot",lvl:1}

execute if score #aglt Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Agility",lvl:1}
execute if score #aglt Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Agility",lvl:2}
execute if score #aglt Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Agility",lvl:3}

execute if score #antexp Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"AntiExplosion",lvl:1}

execute if score #atkb Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"AntiKnockback",lvl:1}
execute if score #atkb Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"AntiKnockback",lvl:2}

execute if score #antvn Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"AntiVenom",lvl:1}
execute if score #antvn Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"AntiVenom",lvl:2}

execute if score #arch Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Arachnid",lvl:1}

execute if score #armd Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Armored",lvl:1}
execute if score #armd Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Armored",lvl:2}

execute if score #aksp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"AttackSpeed",lvl:1}
execute if score #aksp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"AttackSpeed",lvl:2}
execute if score #aksp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"AttackSpeed",lvl:3}

execute if score #autfd Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"AutoFeed",lvl:1}

execute if score #autsml Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"AutoSmelt",lvl:1}

execute if score #bgpt Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"BigPath",lvl:1}

execute if score #bobl Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"BloodyBlade",lvl:1}

execute if score #brvis Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"BrightVision",lvl:1}

execute if score #chop Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Chopping",lvl:1}

execute if score #dasher Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Dasher",lvl:1}
execute if score #dasher Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Dasher",lvl:2}

execute if score #exc Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Excavator",lvl:1}

execute if score #expl Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Explosive",lvl:1}

execute if score #frbw Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"FireballWave",lvl:1}

execute if score #flskn Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"FlamingSkin",lvl:1}

execute if score #gndtl Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"GrandTilling",lvl:1}

execute if score #hdns Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"HardnessPlus",lvl:1}
execute if score #hdns Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"HardnessPlus",lvl:2}
execute if score #hdns Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"HardnessPlus",lvl:3}

execute if score #hrvpl Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"HarvestingPlus",lvl:1}

execute if score #haste Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Haste",lvl:1}
execute if score #haste Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Haste",lvl:2}

execute if score #lstlf Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"LastLife",lvl:1}

execute if score #lstnd Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"LastStand",lvl:1}

execute if score #lvwk Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"LavaWalker",lvl:1}

execute if score #leap Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Leaping",lvl:1}
execute if score #leap Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Leaping",lvl:2}
execute if score #leap Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Leaping",lvl:3}

execute if score #lfps Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"LifePlus",lvl:1}
execute if score #lfps Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"LifePlus",lvl:2}
execute if score #lfps Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"LifePlus",lvl:3}
execute if score #lfps Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"LifePlus",lvl:4}
execute if score #lfps Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"LifePlus",lvl:5}

execute if score #lfstl Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"LifeSteal",lvl:1}

execute if score #mgnt Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Magnet",lvl:1}

execute if score #mrgc Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"MarineGrace",lvl:1}
execute if score #mrgc Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"MarineGrace",lvl:2}

execute if score #mnpl Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"MiningPlus",lvl:1}

execute if score #mlcl Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Multicolor",lvl:1}

execute if score #pks Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Peaks",lvl:1}

execute if score #pst Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"PoisonAspect",lvl:1}
execute if score #pst Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"PoisonAspect",lvl:2}
execute if score #pst Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"PoisonAspect",lvl:3}

execute if score #rcv Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Recovery",lvl:1}
execute if score #rcv Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Recovery",lvl:2}

execute if score #rplt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Replant",lvl:1}

execute if score #sytr Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Scyther",lvl:1}
execute if score #sytr Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Scyther",lvl:2}

execute if score #skfg Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"ShockFangs",lvl:1}

execute if score #skwk Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"SkyWalk",lvl:1}

execute if score #snp Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Sniper",lvl:1}

execute if score #slrp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"SoulReaper",lvl:1}
execute if score #slrp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"SoulReaper",lvl:2}
execute if score #slrp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"SoulReaper",lvl:3}

execute if score #sptr Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Splatter",lvl:1}
execute if score #sptr Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Splatter",lvl:2}
execute if score #sptr Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Splatter",lvl:3}

execute if score #strk Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Striker",lvl:1}
execute if score #strk Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Striker",lvl:2}
execute if score #strk Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Striker",lvl:3}

execute if score #smpl Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"SwimPlus",lvl:1}

execute if score #tmbr Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Timber",lvl:1}

execute if score #tmbrk Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"TimeBreaker",lvl:1}
execute if score #tmbrk Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"TimeBreaker",lvl:2}

execute if score #trms Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Transmission",lvl:1}
execute if score #trms Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Transmission",lvl:2}
execute if score #trms Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Transmission",lvl:3}
execute if score #trms Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Transmission",lvl:4}
execute if score #trms Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Transmission",lvl:5}

execute if score #trsf Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"TurtleStiffness",lvl:1}

execute if score #vnmr Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"VeinMiner",lvl:1}

execute if score #wtjt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Waterjet",lvl:1}

execute if score #xpbt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"XpBoost",lvl:1}
execute if score #xpbt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"XpBoost",lvl:2}
execute if score #xpbt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"XpBoost",lvl:3}
