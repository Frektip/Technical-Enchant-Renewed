#Remove "CustomArrow" nbt tag by default
data remove entity @s Items[{Slot:10b}].tag.CustomArrow

#Check if the crossbow still have custom enchantments that need the CustomArrow nbt tag,
# so we re-add them again. We check for both: bow and crossbow at the same time
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"Arachnid"}]}}]} run data modify entity @s Items[{Slot:10b}].tag.CustomArrow set value 1
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"Explosive"}]}}]} run data modify entity @s Items[{Slot:10b}].tag.CustomArrow set value 1
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"FireballWave"}]}}]} run data modify entity @s Items[{Slot:10b}].tag.CustomArrow set value 1
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"ShockFangs"}]}}]} run data modify entity @s Items[{Slot:10b}].tag.CustomArrow set value 1
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"AccuracyShot"}]}}]} run data modify entity @s Items[{Slot:10b}].tag.CustomArrow set value 1
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"Sniper"}]}}]} run data modify entity @s Items[{Slot:10b}].tag.CustomArrow set value 1
execute if data entity @s {Items:[{Slot:10b,tag:{CustomCurse:[{id:"Fear"}]}}]} run data modify entity @s Items[{Slot:10b}].tag.CustomArrow set value 1