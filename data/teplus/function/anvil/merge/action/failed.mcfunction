tag @p[tag=teplus.anvil.current] remove teplus.anvil.current
playsound entity.enderman.teleport master @p ~ ~ ~ 1 0 1

# Message error for normal combining
tellraw @p [{"translate":"teplus.anvil.merge.error.feedback_section1","fallback":"You don't have at least","color":"red"},{"text":" ","color":"red"},{"score":{"name":"@s","objective":"teplus.anvil.cost"},"color":"dark_red"},{"text":" ","color":"red"},{"translate":"teplus.anvil.merge.error.feedback_section2","fallback":"Experience Levels!","color":"red"}]