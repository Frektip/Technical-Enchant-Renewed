data modify storage teplus:arrow Temp.Compare set from entity @s UUID
execute store success score #check teplus.arrow run data modify storage teplus:arrow Temp.Compare set from storage teplus:arrow Temp.Arrow.Owner
execute if score #check teplus.arrow matches 0 at @s run function #enchbowcross:validate_arrow

