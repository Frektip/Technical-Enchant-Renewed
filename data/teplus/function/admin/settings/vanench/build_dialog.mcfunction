$dialog show @s {type:"minecraft:confirmation",\
  title:{translate:"teplus.settings.vanilla_ench_tittle",fallback:"Vanilla enchantments settings",color:"#6bccc9",bold:1b},\
  inputs:[\
    {type:"minecraft:single_option",key:"input_vanplus",width:250,label:{\
        translate:"teplus.settings.vanench.allow_vanplus",fallback:"More vanilla enchantment levels"\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.enable",fallback:"Enable",color:"green"},initial:$(vanench_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.disable",fallback:"Disable",color:"red"},initial:$(vanench_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_efficiency",width:250,label:[\
        {translate:"enchantment.minecraft.efficiency"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:5,end:20,step:1,initial:$(efficiency_lvl)},\
    {type:"minecraft:number_range",key:"input_feather_falling",width:250,label:[\
        {translate:"enchantment.minecraft.feather_falling"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:4,end:20,step:1,initial:$(feather_falling_lvl)},\
    {type:"minecraft:number_range",key:"input_fire_aspect",width:250,label:[\
        {translate:"enchantment.minecraft.fire_aspect"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:2,end:20,step:1,initial:$(fire_aspect_lvl)},\
    {type:"minecraft:number_range",key:"input_fortune",width:250,label:[\
        {translate:"enchantment.minecraft.fortune"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:3,end:20,step:1,initial:$(fortune_lvl)},\
    {type:"minecraft:number_range",key:"input_impaling",width:250,label:[\
        {translate:"enchantment.minecraft.impaling"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:5,end:20,step:1,initial:$(impaling_lvl)},\
    {type:"minecraft:number_range",key:"input_knockback",width:250,label:[\
        {translate:"enchantment.minecraft.knockback"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:2,end:20,step:1,initial:$(knockback_lvl)},\
    {type:"minecraft:number_range",key:"input_looting",width:250,label:[\
        {translate:"enchantment.minecraft.looting"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:3,end:20,step:1,initial:$(looting_lvl)},\
    {type:"minecraft:number_range",key:"input_luck_of_the_sea",width:250,label:[\
        {translate:"enchantment.minecraft.luck_of_the_sea"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:4,end:20,step:1,initial:$(luck_of_the_sea_lvl)},\
    {type:"minecraft:number_range",key:"input_lure",width:250,label:[\
        {translate:"enchantment.minecraft.lure"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:3,end:20,step:1,initial:$(lure_lvl)},\
    {type:"minecraft:number_range",key:"input_piercing",width:250,label:[\
        {translate:"enchantment.minecraft.piercing"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:4,end:20,step:1,initial:$(piercing_lvl)},\
    {type:"minecraft:number_range",key:"input_power",width:250,label:[\
        {translate:"enchantment.minecraft.power"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:5,end:20,step:1,initial:$(power_lvl)},\
    {type:"minecraft:number_range",key:"input_protection",width:250,label:[\
        {translate:"enchantment.minecraft.protection"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:4,end:20,step:1,initial:$(protection_lvl)},\
    {type:"minecraft:number_range",key:"input_punch",width:250,label:[\
        {translate:"enchantment.minecraft.punch"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:2,end:20,step:1,initial:$(punch_lvl)},\
    {type:"minecraft:number_range",key:"input_respiration",width:250,label:[\
        {translate:"enchantment.minecraft.respiration"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:3,end:20,step:1,initial:$(respiration_lvl)},\
    {type:"minecraft:number_range",key:"input_riptide",width:250,label:[\
        {translate:"enchantment.minecraft.riptide"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:3,end:20,step:1,initial:$(riptide_lvl)},\
    {type:"minecraft:number_range",key:"input_sharpness",width:250,label:[\
        {translate:"enchantment.minecraft.sharpness"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:5,end:20,step:1,initial:$(sharpness_lvl)},\
    {type:"minecraft:number_range",key:"input_sweeping_edge",width:250,label:[\
        {translate:"enchantment.minecraft.sweeping_edge"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:3,end:20,step:1,initial:$(sweeping_edge_lvl)},\
    {type:"minecraft:number_range",key:"input_swift_sneak",width:250,label:[\
        {translate:"enchantment.minecraft.swift_sneak"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:3,end:20,step:1,initial:$(swift_sneak_lvl)},\
    {type:"minecraft:number_range",key:"input_thorns",width:250,label:[\
        {translate:"enchantment.minecraft.thorns"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:3,end:20,step:1,initial:$(thorns_lvl)},\
    {type:"minecraft:number_range",key:"input_unbreaking",width:250,label:[\
        {translate:"enchantment.minecraft.unbreaking"}," ",{translate:"teplus.misc.max_level",fallback:"max level",color:"#429a78"}\
      ],start:3,end:20,step:1,initial:$(unbreaking_lvl)}\
  ],\
  yes:{label:{translate:"teplus.settings.confirm",fallback:"Apply Changes"},\
    action:{type:"minecraft:dynamic/run_command",\
      template:"/function teplus:admin/settings/vanench/apply_changes {input_vanplus:\u0024(input_vanplus), input_efficiency:\u0024(input_efficiency), input_feather_falling:\u0024(input_feather_falling), input_fire_aspect:\u0024(input_fire_aspect), input_fortune:\u0024(input_fortune), input_impaling:\u0024(input_impaling), input_knockback:\u0024(input_knockback), input_looting:\u0024(input_looting), input_luck_of_the_sea:\u0024(input_luck_of_the_sea), input_lure:\u0024(input_lure), input_piercing:\u0024(input_piercing), input_power:\u0024(input_power), input_protection:\u0024(input_protection), input_punch:\u0024(input_punch), input_respiration:\u0024(input_respiration), input_riptide:\u0024(input_riptide), input_sharpness:\u0024(input_sharpness), input_sweeping_edge:\u0024(input_sweeping_edge), input_swift_sneak:\u0024(input_swift_sneak), input_thorns:\u0024(input_thorns), input_unbreaking:\u0024(input_unbreaking)}"\
    }\
  },\
  no:{label:{translate:"teplus.settings.cancel",fallback:"Cancel"}}\
}