

# Move the item display to a new relative location from the marker
$tp @s $(location)

# Update the item display translation
$data modify entity @s transformation.translation set value [$(trlX),$(trlY),$(trlZ)]