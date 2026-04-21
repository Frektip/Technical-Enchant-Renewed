$dialog show @s {type:"minecraft:confirmation",\
  title:{translate:"teplus.settings.advanced_enchanters_tittle",fallback:"Advanced enchanters settings",color:"#6c8cc7",bold:1b},\
  inputs:[\
    {type:"minecraft:single_option",key:"input_villagers",width:250,label:{\
        translate:"teplus.settings.enchanters.allow_enchanters",fallback:"Allow Advanced Enchanters"\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.enable",fallback:"Enable",color:"green"},initial:$(villagers_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.disable",fallback:"Disable",color:"red"},initial:$(villagers_opt2)}\
      ]},\
    {type:"minecraft:single_option",key:"input_vill_dsnt",width:250,label:{\
        translate:"teplus.settings.enchanters.discounts",fallback:"Offer discounts",hover_event:{action:"show_text",value:{translate:"teplus.settings.enchanters.discounts.desc",fallback:"Allow advanced enchanters to offer discounts similar to vanilla"}}\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(vill_dsnt_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(vill_dsnt_opt2)}\
      ]},\
    {type:"minecraft:single_option",key:"input_vill_renws",width:250,label:{\
        translate:"teplus.settings.enchanters.restock",fallback:"Allow restock",hover_event:{action:"show_text",value:{translate:"teplus.settings.enchanters.restock.desc",fallback:"Make special items from the last tier renewable"}}\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(vill_renws_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(vill_renws_opt2)}\
      ]},\
    {type:"minecraft:single_option",key:"input_vill_anylvl",width:250,label:{\
        translate:"teplus.settings.enchanters.sell_high_level",fallback:"Sell higher-level enchantments",hover_event:{action:"show_text",value:{translate:"teplus.settings.enchanters.sell_high_level.desc",fallback:"Allow advanced enchanters to sell enchantments with levels higher than one"}}\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(vill_anylvl_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(vill_anylvl_opt2)}\
      ]}\
  ],\
  yes:{label:{translate:"teplus.settings.confirm",fallback:"Apply changes"},\
    action:{type:"minecraft:dynamic/run_command",\
      template:"function teplus:admin/settings/enchanters/apply_changes {input_villagers:\u0024(input_villagers), input_vill_dsnt:\u0024(input_vill_dsnt), input_vill_renws:\u0024(input_vill_renws), input_vill_anylvl:\u0024(input_vill_anylvl)}"\
    }\
  },\
  no:{label:{translate:"teplus.settings.cancel",fallback:"Cancel"}}\
}