#Spawn Xp orb based in propability
execute if block ~ ~ ~ nether_gold_ore if predicate enchantplus:random_chance/50 run summon experience_orb ~ ~ ~ {Value:1}

execute if block ~ ~ ~ coal_ore run function enchantplus:result/miningplus/xp_orb_spawn/coal
execute if block ~ ~ ~ deepslate_coal_ore run function enchantplus:result/miningplus/xp_orb_spawn/coal

execute if block ~ ~ ~ diamond_ore run function enchantplus:result/miningplus/xp_orb_spawn/emdiam
execute if block ~ ~ ~ deepslate_diamond_ore run function enchantplus:result/miningplus/xp_orb_spawn/emdiam
execute if block ~ ~ ~ emerald_ore run function enchantplus:result/miningplus/xp_orb_spawn/emdiam
execute if block ~ ~ ~ deepslate_emerald_ore run function enchantplus:result/miningplus/xp_orb_spawn/emdiam

execute if block ~ ~ ~ lapis_ore run function enchantplus:result/miningplus/xp_orb_spawn/lapqtz
execute if block ~ ~ ~ deepslate_lapis_ore run function enchantplus:result/miningplus/xp_orb_spawn/lapqtz
execute if block ~ ~ ~ nether_quartz_ore run function enchantplus:result/miningplus/xp_orb_spawn/lapqtz

execute if block ~ ~ ~ redstone_ore run function enchantplus:result/miningplus/xp_orb_spawn/redstone
execute if block ~ ~ ~ deepslate_redstone_ore run function enchantplus:result/miningplus/xp_orb_spawn/redstone