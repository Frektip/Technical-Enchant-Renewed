# Build actions for each enchantment (including addons)
data modify storage teplus:common actions.list set value []
function #teplus:config/register_action

# Show the dialog with the generated storage
function teplus:admin/settings/enchantments/list/show_dialog with storage teplus:common actions

data remove storage teplus:common actions