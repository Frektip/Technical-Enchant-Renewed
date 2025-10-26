##########################################################
#                        @CREDITS                        #
# The following light update system was made by KawaMood #
# TE+ took some parts to match its needs                 #
##########################################################

# First we check if the new location we are looking for isn't blocked (with light 0)
#
# We check by all sides in order: top -> bottom -> east -> west -> south -> north
#
# If the space is available, we update the storage arguments
#      temp.light_move_to_args:{ 
#                     move_to_direction: string,
#                     location: string,
#                     trlX: float,
#                     trlY: float,
#                     trlZ: float
#      }

# Top
execute unless data storage teplus:common temp{move_from_direction:"top"} positioned ~ ~1 ~ unless predicate teplus:light/0 run return run data modify storage teplus:common temp.light_move_to_args merge value {move_to_direction:"top",location:"~ ~1 ~",trlX:0.500f,trlY:-0.500f,trlZ:0.500f}

# Bottom
execute unless data storage teplus:common temp{move_from_direction:"bottom"} positioned ~ ~-1 ~ unless predicate teplus:light/0 run return run data modify storage teplus:common temp.light_move_to_args merge value {move_to_direction:"bottom",location:"~ ~-1 ~",trlX:0.500,trlY:1.500f,trlZ:0.500f}

# East
execute unless data storage teplus:common temp{move_from_direction:"east"} positioned ~1 ~ ~ unless predicate teplus:light/0 run return run data modify storage teplus:common temp.light_move_to_args merge value {move_to_direction:"east",location:"~1 ~ ~",trlX:-0.500f,trlY:0.500f,trlZ:0.500f}

# West
execute unless data storage teplus:common temp{move_from_direction:"west"} positioned ~-1 ~ ~ unless predicate teplus:light/0 run return run data modify storage teplus:common temp.light_move_to_args merge value {move_to_direction:"west",location:"~-1 ~ ~",trlX:1.500f,trlY:0.500f,trlZ:0.500f}

# South
execute unless data storage teplus:common temp{move_from_direction:"south"} positioned ~ ~ ~1 unless predicate teplus:light/0 run return run data modify storage teplus:common temp.light_move_to_args merge value {move_to_direction:"south",location:"~ ~ ~1",trlX:0.500f,trlY:0.500f,trlZ:-0.500f}

# North
execute unless data storage teplus:common temp{move_from_direction:"north"} positioned ~ ~ ~-1 unless predicate teplus:light/0 run return run data modify storage teplus:common temp.light_move_to_args merge value {move_to_direction:"north",location:"~ ~ ~-1",trlX:0.500f,trlY:0.500f,trlZ:1.500f}