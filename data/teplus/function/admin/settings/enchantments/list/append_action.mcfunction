$data modify storage teplus:common actions.list append value {\
  label:{translate:"teplus.enchantment.$(ench_name)",fallback:"$(ench_fallback)"},\
  tooltip:{translate:"teplus.hover.click_to_go",fallback:"Click here to go"},\
  action:{type:"minecraft:run_command",\
    command:"function teplus:admin/settings/enchantments/single/get_options {ench_name:\"$(ench_name)\", ench_target:\"$(ench_target)\",ench_fallback:\"$(ench_fallback)\"}"\
  }\
}