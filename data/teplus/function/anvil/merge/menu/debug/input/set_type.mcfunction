# Apply custom data values to the storage ---> {teplus:{valid:1b, type:""}}
# @params:
# - {storage}: could be Section1 (slot=2b) or Section2 (slot=6b)
# - {type}: shared item type to group the input

$data modify storage teplus:updates TAM.Inputs.$(storage).teplus.valid set value 1b
$data modify storage teplus:updates TAM.Inputs.$(storage).teplus.type set value "$(type)"