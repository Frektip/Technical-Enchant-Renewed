# This set the gameplay options using "game.Opts"
# scoreboard and a fake player.
scoreboard players set #vanench game.Opts 0
scoreboard players set #enchtbk game.Opts 0
scoreboard players set #enchit game.Opts 0
scoreboard players set #mrgbk game.Opts 0
scoreboard players set #mrgit game.Opts 0
scoreboard players set #diench game.Opts 0
scoreboard players set #itwbk game.Opts 0
scoreboard players set #xprq game.Opts 2
scoreboard players set #tslpm game.Opts 1
scoreboard players set #extrmd game.Opts 0
scoreboard players set #lmtsoul game.Opts 0
scoreboard players set #tmblvs game.Opts 0

scoreboard players set #crftbksh game.Opts 0
scoreboard players set #crftchnv game.Opts 0

# The dirthday potion has a different scoreboard because I
# I forget about it XD
scoreboard players set #yrbrt Enchopts 0

#Add the default material for the Base Charge
data modify storage teplus:register Resource set value [{Value:{id:"minecraft:lapis_lazuli"}},{Compare:{}}]
scoreboard players set #qtychrg game.Opts 3

#Xp required to access to a low Average or Strong enchantment
scoreboard players set #xplow game.Opts 12
scoreboard players set #xpavr game.Opts 24
scoreboard players set #xpstr game.Opts 36

#Experience Crystal merging
scoreboard players set #xpcrtlm game.Opts 0