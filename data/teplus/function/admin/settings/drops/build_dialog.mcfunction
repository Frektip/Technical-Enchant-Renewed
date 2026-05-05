$dialog show @s {type:"minecraft:confirmation",\
  title:{translate:"teplus.settings.drops_tittle",fallback:"Mob drops settings",color:"#a7b056",bold:1b},\
  inputs:[\
    {type:"minecraft:single_option",key:"input_drops",width:250,label:{\
        translate:"teplus.settings.drops.allow_mob_drops",fallback:"Allow enchanted mobs"\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.enable",fallback:"Enable",color:"green"},initial:$(drops_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.disable",fallback:"Disable",color:"red"},initial:$(drops_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_chance",width:250,label:{\
        translate:"teplus.settings.drops.chance",fallback:"Drop a book when enchanted mob is killed"\
      },start:0,end:100,step:1,initial:$(chance)},\
    {type:"minecraft:single_option",key:"input_glow",width:250,label:{\
        translate:"teplus.settings.drops.glow",fallback:"Enchanted mobs glow"\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(glow_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(glow_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_rates",width:250,label:{\
        translate:"teplus.settings.drops.rates",fallback:"Drop rates to spawn an enchanted mob"\
      },start:0,end:100,step:1,initial:$(rates)},\
    {type:"minecraft:single_option",key:"input_buffs",width:250,label:{\
        translate:"teplus.settings.drops.buffs",fallback:"Enchanted mobs can have buffs"\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(buffs_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(buffs_opt2)}\
      ]}\
  ],\
  yes:{label:{translate:"teplus.settings.confirm",fallback:"Apply Changes"},\
    action:{type:"minecraft:dynamic/run_command",\
      template:"/function teplus:admin/settings/drops/apply_changes {input_drops:\u0024(input_drops), input_chance:\u0024(input_chance), input_glow:\u0024(input_glow), input_rates:\u0024(input_rates), input_buffs:\u0024(input_buffs)}"\
    }\
  },\
  no:{label:{translate:"teplus.settings.cancel",fallback:"Cancel"}}\
}