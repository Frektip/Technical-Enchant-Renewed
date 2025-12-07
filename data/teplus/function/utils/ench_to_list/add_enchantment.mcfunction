# At this point, we get as a parameter the value "ench" which cointains the enchantment name to add
# and reference from the object storage

$data modify storage teplus:temp enchlist append value {id:$(ench)}                               # Append the name of the enchantment
$data modify storage teplus:temp enchlist[-1].lvl set from storage teplus:temp enchobj.$(ench)    # Set the level of the enchantment
