#Center marker in the middle of the enchanting table
summon marker ~.5 ~ ~.5 {Tags:["teplus.marker","teplus.enchanting_table"]}

#Other armor stands that will spin and display the charged bookshelf level
#These armor stands are at the center and I only set it's head rotation (this was a pain
# to get the correct rotation :/)
summon armor_stand ~.5 ~-1.1 ~.5 {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:["teplus.armor_stand","teplus.bookshelf_level","teplus.level1"],Pose:{Head:[0f,90f,0f]},DisabledSlots:4144959}

summon armor_stand ~.5 ~-1.1 ~.5 {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:["teplus.armor_stand","teplus.bookshelf_level","teplus.level2"],Pose:{Head:[0f,-25f,0f]},DisabledSlots:4144959}

summon armor_stand ~.5 ~-1.1 ~.5 {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:["teplus.armor_stand","teplus.bookshelf_level","teplus.level3"],Pose:{Head:[0f,215f,0f]},DisabledSlots:4144959}
#Kill marker
kill @s