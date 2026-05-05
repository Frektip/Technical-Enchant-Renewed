# This function takes the current value of an scoreboard (must be 0 or 1) and inverts its value
# @Params:
#  - {target}: selector of the scoreboard, could be an enttiy or a fake player
#  - {objective}: the scoreboard objective where the value is stored

$execute if score $(target) $(objective) matches 0 run return run scoreboard players set #inverted teplus.tmp 1
scoreboard players set #inverted teplus.tmp 0