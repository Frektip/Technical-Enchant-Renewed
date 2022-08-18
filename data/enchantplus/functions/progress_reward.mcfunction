tellraw @s[gamemode=survival] {"text":"\n\n\n\n\n"} 
tellraw @s[gamemode=survival] ["",{"text":"<TE+> ","color":"aqua"},{"translate":"You have merged all custom enchantments, curses and exceeded vanilla enchantments at thier Max Level in one single book!","color":"gold"},{"text":"\n\n"}] 

effect give @s resistance 1 4 true
execute at @s run playsound minecraft:entity.player.levelup ambient @a[distance=..10] ~ ~ ~ 3 .5 
execute at @s run particle minecraft:nautilus ~ ~1.5 ~ 0.0001 0.01 0.0001 5 1000 
execute at @s run particle minecraft:enchant ~ ~1 ~ 0.1 0.1 0.1 10 5000 
execute at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;14233108,16755999],FadeColors:[I;8350719,2723327]}]}}}} 

##I'm still thinking that the reward is good enough
#tellraw @s[gamemode=survival] ["",{"text":"Congrats!","color":"red","bold":true},{"text":" Have this ","color":"white"},{"text":"\"Ilegal enchanted trident\"","color":"dark_aqua"},{"text":" in return.","color":"white"}] 

#give @s trident{display:{Name:'{"text":"Ilegal Technical Trident","color":"#3ADEC8"}',Lore:['{"text":"Waterjet","color":"gray","italic":false}','{"text":"Marine Grace II","color":"gray","italic":false}','{"text":"Xp Boost III","color":"gray","italic":false}','{"text":"Poison Aspect III","color":"gray","italic":false}','{"text":"Attack Speed","color":"gray","italic":false}']},MaxEnch: 1b, CustomEnchantments: [{id: "AttackSpeed", lvl: 3}, {id: "MarineGrace", lvl: 2}, {id: "PoisonAspect", lvl: 3}, {id: "Waterjet", lvl: 1}, {id: "XpBoost", lvl: 3}],Enchantments:[{id:"minecraft:sharpness",lvl:7s},{id:"minecraft:unbreaking",lvl:5s},{id:"minecraft:loyalty",lvl:3s},{id:"minecraft:impaling",lvl:6s},{id:"minecraft:channeling",lvl:1s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:13,Operation:0,UUID:[I;1802867733,-2088744116,-1343380900,-30841596],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:2,Operation:0,UUID:[I;-1865429912,1652705598,-2098946880,-300794886],Slot:"mainhand"}]} 1
