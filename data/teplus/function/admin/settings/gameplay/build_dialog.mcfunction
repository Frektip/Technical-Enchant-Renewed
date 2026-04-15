$dialog show @s {type:"minecraft:confirmation",\
  title:{translate:"teplus.settings.gameplay_tittle",fallback:"Gameplay Options",color:"#cc90e7",bold:1b},\
  inputs:[\
    {type:"minecraft:boolean",key:"input_debug",label:{\
        translate:"teplus.settings.gameplay.debug",fallback:"Enable debug mode"\
      },initial:$(debug),on_true:"1",on_false:"0"},\
    {type:"minecraft:single_option",key:"input_itwbk",width:250,label:{\
        translate:"teplus.settings.gameplay.apply_using_books",fallback:"Enchantments with books",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.apply_using_books.desc",fallback:"Apply custom enchantments to items using books"}}\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(itwbk_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(itwbk_opt2)}\
      ]},\
    {type:"minecraft:single_option",key:"input_mrgbk",width:250,label:{\
        translate:"teplus.settings.gameplay.stack_books",fallback:"Combine books",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.stack_books.desc",fallback:"Stack enchantments when combining books with books in the Technical Anvil"}}\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(mrgbk_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(mrgbk_opt2)}\
      ]},\
    {type:"minecraft:single_option",key:"input_mrgit",width:250,label:{\
        translate:"teplus.settings.gameplay.stack_items",fallback:"Combine items",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.stack_items.desc",fallback:"Stack enchantments when combining an item with the same item using the Technical Anvil"}}\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(mrgit_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(mrgit_opt2)}\
      ]},\
    {type:"minecraft:single_option",key:"input_extrmd",width:250,label:{\
        translate:"teplus.settings.gameplay.extract_enchantments",fallback:"Extract enchantments",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.extract_enchantments.desc",fallback:"Separate custom enchantments from an enchanted item using the Technical Anvil"}}\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(extrmd_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(extrmd_opt2)}\
      ]},\
    {type:"minecraft:single_option",key:"input_xpcrtlm",width:250,label:{\
        translate:"teplus.settings.gameplay.increase_experience_tier",fallback:"Experience crystal update",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.increase_experience_tier.desc",fallback:"Allow the increase of the Experience crystal Tier"}}\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(xpcrtlm_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(xpcrtlm_opt2)}\
      ]},\
    {type:"minecraft:number_range",key: "input_xprq",label: {\
        translate: "teplus.settings.gameplay.technical_anvil_cost",fallback: "Technical Anvil Cost",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.technical_anvil_cost.desc",fallback:"This is the base multiplier value that gets added with each technical anvil use on an item"}}\
      },start: 2,end: 5,step: 1,initial:$(xprq)}\
  ],\
  yes:{label:{translate:"teplus.settings.confirm",fallback:"Apply changes"},\
    action:{type:"minecraft:dynamic/run_command",\
      template:"function teplus:admin/settings/gameplay/apply_changes {input_debug:\u0024(input_debug), input_itwbk:\u0024(input_itwbk), input_mrgbk:\u0024(input_mrgbk), input_mrgit:\u0024(input_mrgit), input_extrmd:\u0024(input_extrmd), input_xpcrtlm:\u0024(input_xpcrtlm), input_xprq:\u0024(input_xprq)}"\
    }\
  },\
  no:{label:{translate:"teplus.settings.cancel",fallback:"Cancel"}}\
}