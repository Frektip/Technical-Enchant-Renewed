#This will allow to identify how rare is the enchantment
#  based on the storage
#transfer the enchantment from Temp to another one
data modify storage teplus:loot Rarity[] set from storage teplus:loot Temp[0]

#Based on the enchantment, register it using a score
scoreboard players set #enchant.rarity teplus.data 0

execute if data storage teplus:loot Rarity[{id:"AccuracyShot"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"Agility"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"AntiExplosion"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"AntiKnockback"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"AntiVenom"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"Arachnid"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"Armored"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"AttackSpeed"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"AutoFeed"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"AutoSmelt"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"BigPath"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"BloodyBlade"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"BrightVision"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"Chopping"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"Dasher"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"Excavator"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"Explosive"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"FireballWave"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"FlamingSkin"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"GrandTilling"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"HardnessPlus"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"HarvestingPlus"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"Haste"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"LastLife"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"LastStand"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"LavaWalker"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"Leaping"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"LifePlus"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"LifeSteal"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"Magnet"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"MarineGrace"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"MiningPlus"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"Multicolor"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"Peaks"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"PoisonAspect"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"Recovery"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"Replant"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"Scyther"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"ShockFangs"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"SkyWalk"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"Sniper"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"SoulReaper"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"Splatter"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"Striker"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"SwimPlus"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"Timber"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"TimeBreaker"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"Transmission"}] run scoreboard players set #enchant.rarity teplus.data 1
execute if data storage teplus:loot Rarity[{id:"TurtleStiffness"}] run scoreboard players set #enchant.rarity teplus.data 2
execute if data storage teplus:loot Rarity[{id:"VeinMiner"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"Waterjet"}] run scoreboard players set #enchant.rarity teplus.data 3
execute if data storage teplus:loot Rarity[{id:"XpBoost"}] run scoreboard players set #enchant.rarity teplus.data 3
