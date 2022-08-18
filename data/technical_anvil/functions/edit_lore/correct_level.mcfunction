#Remove low levels from the enchantments that have more than I enchantment level
#Example: Life+ has V levels, we need to remove lvl I, II, III and IV

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Life+ I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"LifePlus",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Life+ II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"LifePlus",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Life+ III","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"LifePlus",lvl:3}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Life+ IV","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"LifePlus",lvl:4}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Attack Speed I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"AttackSpeed",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Attack Speed II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"AttackSpeed",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Poison Aspect I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"PoisonAspect",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Poison Aspect II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"PoisonAspect",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Xp Boost I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"XpBoost",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Xp Boost II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"XpBoost",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Agility I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Agility",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Agility II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Agility",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Leaping I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Leaping",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Leaping II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Leaping",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Haste I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Haste",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Anti-Venom I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"AntiVenom",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Time Breaker I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"TimeBreaker",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Recovery I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Recovery",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Marine Grace I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"MarineGrace",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Anti-Knockback I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"AntiKnockback",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Hardness+ I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"HardnessPlus",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Hardness+ II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"HardnessPlus",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Armored I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Armored",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Soul Reaper I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"SoulReaper",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Soul Reaper II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"SoulReaper",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Scyther I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Scyther",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Transmission I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Transmission",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Transmission II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Transmission",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Transmission III","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Transmission",lvl:3}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Transmission IV","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Transmission",lvl:4}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Splatter I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Splatter",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Splatter II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Splatter",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Striker I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Striker",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Striker II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Striker",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"translate":"Dasher I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Dasher",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
