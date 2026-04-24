# Build actions for each enchantment


# Show the dialog with the generated storage
dialog show @s {type:"minecraft:multi_action",title:{translate:"teplus.settings.custom_ench_tittle",fallback:"Custom enchantments options",color:"#e2a657",bold:1},inputs:[],columns:2,actions:[{label:{translate:"teplus.enchantment.accuracy_shot",fallback:"Accuracy Shot"},tooltip:{translate:"teplus.hover.click_to_go",fallback:"Click here to go"},action:{type:"minecraft:run_command",command:"function teplus:admin/settings/enchantments/single/get_options {ench_name:\"accuracy_shot\", ench_target:\"#accuracy_shot\",ench_fallback:\"Accuracy Shot\"}"}}]}