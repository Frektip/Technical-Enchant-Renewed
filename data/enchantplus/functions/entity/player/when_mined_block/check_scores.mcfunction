##If the player use any tool: pickaxe, axe, shovel, hoe or
#  fishing rod, add that value to
## the general scoreboard
#Fishing Rod
scoreboard players operation @s teplus.firod += @s[scores={Splatter.Shoot=1..}] Splatter.Shoot

#Pickaxe
scoreboard players operation @s teplus.pick += @s[scores={tep.use_npick=1..}] tep.use_npick
scoreboard players operation @s teplus.pick += @s[scores={tep.use_dpick=1..}] tep.use_dpick
scoreboard players operation @s teplus.pick += @s[scores={tep.use_ipick=1..}] tep.use_ipick
scoreboard players operation @s teplus.pick += @s[scores={tep.use_gpick=1..}] tep.use_gpick
scoreboard players operation @s teplus.pick += @s[scores={tep.use_spick=1..}] tep.use_spick
scoreboard players operation @s teplus.pick += @s[scores={tep.use_wpick=1..}] tep.use_wpick

#Axe
scoreboard players operation @s teplus.axe += @s[scores={tep.use_naxe=1..}] tep.use_naxe
scoreboard players operation @s teplus.axe += @s[scores={tep.use_daxe=1..}] tep.use_daxe
scoreboard players operation @s teplus.axe += @s[scores={tep.use_iaxe=1..}] tep.use_iaxe
scoreboard players operation @s teplus.axe += @s[scores={tep.use_gaxe=1..}] tep.use_gaxe
scoreboard players operation @s teplus.axe += @s[scores={tep.use_saxe=1..}] tep.use_saxe
scoreboard players operation @s teplus.axe += @s[scores={tep.use_waxe=1..}] tep.use_waxe

#Shovel
scoreboard players operation @s teplus.shov += @s[scores={tep.use_nshov=1..}] tep.use_nshov
scoreboard players operation @s teplus.shov += @s[scores={tep.use_dshov=1..}] tep.use_dshov
scoreboard players operation @s teplus.shov += @s[scores={tep.use_ishov=1..}] tep.use_ishov
scoreboard players operation @s teplus.shov += @s[scores={tep.use_gshov=1..}] tep.use_gshov
scoreboard players operation @s teplus.shov += @s[scores={tep.use_sshov=1..}] tep.use_sshov
scoreboard players operation @s teplus.shov += @s[scores={tep.use_wshov=1..}] tep.use_wshov

#Hoe
scoreboard players operation @s teplus.hoe += @s[scores={tep.use_nhoe=1..}] tep.use_nhoe
scoreboard players operation @s teplus.hoe += @s[scores={tep.use_dhoe=1..}] tep.use_dhoe
scoreboard players operation @s teplus.hoe += @s[scores={tep.use_ihoe=1..}] tep.use_ihoe
scoreboard players operation @s teplus.hoe += @s[scores={tep.use_ghoe=1..}] tep.use_ghoe
scoreboard players operation @s teplus.hoe += @s[scores={tep.use_shoe=1..}] tep.use_shoe
scoreboard players operation @s teplus.hoe += @s[scores={tep.use_whoe=1..}] tep.use_whoe

##Reset the scores
#Fishing Rod
scoreboard players reset @s[scores={Splatter.Shoot=1..}] Splatter.Shoot

#Pickaxe
scoreboard players reset @s[scores={tep.use_npick=1..}] tep.use_npick
scoreboard players reset @s[scores={tep.use_dpick=1..}] tep.use_dpick
scoreboard players reset @s[scores={tep.use_ipick=1..}] tep.use_ipick
scoreboard players reset @s[scores={tep.use_gpick=1..}] tep.use_gpick
scoreboard players reset @s[scores={tep.use_spick=1..}] tep.use_spick
scoreboard players reset @s[scores={tep.use_wpick=1..}] tep.use_wpick

#Axe
scoreboard players reset @s[scores={tep.use_naxe=1..}] tep.use_naxe
scoreboard players reset @s[scores={tep.use_daxe=1..}] tep.use_daxe
scoreboard players reset @s[scores={tep.use_iaxe=1..}] tep.use_iaxe
scoreboard players reset @s[scores={tep.use_gaxe=1..}] tep.use_gaxe
scoreboard players reset @s[scores={tep.use_saxe=1..}] tep.use_saxe
scoreboard players reset @s[scores={tep.use_waxe=1..}] tep.use_waxe

#Shovel
scoreboard players reset @s[scores={tep.use_nshov=1..}] tep.use_nshov
scoreboard players reset @s[scores={tep.use_dshov=1..}] tep.use_dshov
scoreboard players reset @s[scores={tep.use_ishov=1..}] tep.use_ishov
scoreboard players reset @s[scores={tep.use_gshov=1..}] tep.use_gshov
scoreboard players reset @s[scores={tep.use_sshov=1..}] tep.use_sshov
scoreboard players reset @s[scores={tep.use_wshov=1..}] tep.use_wshov

#Hoe
scoreboard players reset @s[scores={tep.use_nhoe=1..}] tep.use_nhoe
scoreboard players reset @s[scores={tep.use_dhoe=1..}] tep.use_dhoe
scoreboard players reset @s[scores={tep.use_ihoe=1..}] tep.use_ihoe
scoreboard players reset @s[scores={tep.use_ghoe=1..}] tep.use_ghoe
scoreboard players reset @s[scores={tep.use_shoe=1..}] tep.use_shoe
scoreboard players reset @s[scores={tep.use_whoe=1..}] tep.use_whoe