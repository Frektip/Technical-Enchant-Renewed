# Add the second Lore line based on the curse
data modify entity @s[nbt={Item:{tag:{StoredCustomCurse:[{id:"Exhaustion"}]}}}] Item.tag.display.Lore append value "[{\"text\":\"► \",\"color\":\"white\"},{\"translate\":\"Tools\",\"color\":\"white\"}]"
data modify entity @s[nbt={Item:{tag:{StoredCustomCurse:[{id:"Fear"}]}}}] Item.tag.display.Lore append value "[{\"text\":\"► \",\"color\":\"white\"},{\"translate\":\"Weapons\",\"color\":\"white\"}]"
data modify entity @s[nbt={Item:{tag:{StoredCustomCurse:[{id:"Fragile"}]}}}] Item.tag.display.Lore append value "[{\"text\":\"► \",\"color\":\"white\"},{\"translate\":\"Everything\",\"color\":\"white\"}]"
data modify entity @s[nbt={Item:{tag:{StoredCustomCurse:[{id:"Sensitive"}]}}}] Item.tag.display.Lore append value "[{\"text\":\"► \",\"color\":\"white\"},{\"translate\":\"Armor\",\"color\":\"white\"},{\"text\":\" - \",\"color\":\"white\"},{\"translate\":\"item.minecraft.elytra\",\"color\":\"white\"},{\"text\":\" - \",\"color\":\"white\"},{\"translate\":\"item.minecraft.shield\",\"color\":\"white\"}]"
data modify entity @s[nbt={Item:{tag:{StoredCustomCurse:[{id:"Slippery"}]}}}] Item.tag.display.Lore append value "[{\"text\":\"► \",\"color\":\"white\"},{\"translate\":\"Tools\",\"color\":\"white\"},{\"text\":\" - \",\"color\":\"white\"},{\"translate\":\"Weapons\",\"color\":\"white\"}]"