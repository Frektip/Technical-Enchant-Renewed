$dialog show @s {type:"minecraft:confirmation",\
  title:{translate:"teplus.enchantment.$(ench_name)",fallback:"$(ench_fallback)",color:"#e2b457",bold:1b},\
  inputs:[\
    {type:"minecraft:single_option",key:"input_enable",width:250,label:[\
        {translate:"teplus.settings.custom_ench.allow",fallback:"Allow"}," "\
      ],options:[\
        {id:"1",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(opt1)},\
        {id:"0",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_max_level",width:250,label:{\
        translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"\
      },start:1,end:20,step:1,initial:$(current_lvl)}\
  ],\
  yes:{label:{translate:"teplus.settings.confirm",fallback:"Apply Changes"},\
    action:{type:"minecraft:dynamic/run_command",\
      template:"/function teplus:admin/settings/enchantments/single/apply_changes {input_enable:\u0024(input_enable), max_level:\u0024(input_max_level), ench_target:\"$(ench_target)\", ench_name:\"$(ench_name)\"}"\
    }\
  },\
  no:{label:{translate:"teplus.settings.cancel",fallback:"Cancel"}}\
}