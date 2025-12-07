# to get custom enchantments ONLY, "teplus:temp getench.all" MUST have been previously initialized
data remove storage teplus:temp getench.customonly
data modify storage teplus:temp getench.customonly set value {}

function #teplus:get_enchantments

# After this, "teplus:temp getench.custom" storage would have all custom enchantments that were detected