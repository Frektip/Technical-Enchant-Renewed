#Modify the values
data modify entity @s[nbt={Gossips:[{Type:"major_positive"}]}] Gossips[{Type:"major_positive"}].Value set value 0
data modify entity @s[nbt={Gossips:[{Type:"minor_positive"}]}] Gossips[{Type:"minor_positive"}].Value set value 0
data modify entity @s[nbt={Gossips:[{Type:"trading"}]}] Gossips[{Type:"trading"}].Value set value 0

data modify entity @s LastGossipDecay set value -99999L