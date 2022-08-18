scoreboard players set #drop.buffs tepext.manager 0
execute as @e[tag=tepdrop.can,predicate=!teplus_exten:drops/has_effects,predicate=!teplus_exten:drops/has_attributes] run function teplus_exten:drops/set_buffs/core

function teplus_exten:manager/menu/drops/menu