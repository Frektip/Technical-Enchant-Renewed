$dialog show @s {type:"minecraft:confirmation",\
  title:{translate:"teplus.settings.gameplay_tittle",fallback:"Gameplay Options",color:"#cc90e7",bold:1b},\
  inputs:[\
    {type:"minecraft:boolean",key:"input_debug",label:{\
        translate:"teplus.settings.gameplay.debug",fallback:"Enable debug mode"\
      },initial:$(debug),on_true:"1",on_false:"0"},\
    {type:"minecraft:boolean",key:"input_itwbk",label:{\
        translate:"teplus.settings.gameplay.apply_using_books",fallback:"Enchantments with books",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.apply_using_books.desc",fallback:"Apply custom enchantments to items using books"}}\
      },initial:$(itwbk),on_true:"0",on_false:"1"},\
    {type:"minecraft:boolean",key:"input_mrgbk",label:{\
        translate:"teplus.settings.gameplay.stack_books",fallback:"Combine books",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.stack_books.desc",fallback:"Stack enchantments when combining books with books in the Technical Anvil"}}\
      },initial:$(mrgbk),on_true:"0",on_false:"1"},\
    {type:"minecraft:boolean",key:"input_mrgit",label:{\
        translate:"teplus.settings.gameplay.stack_items",fallback:"Combine items",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.stack_items.desc",fallback:"Stack enchantments when combining an item with the same item using the Technical Anvil"}}\
      },initial:$(mrgit),on_true:"0",on_false:"1"},\
    {type:"minecraft:boolean",key:"input_extrmd",label:{\
        translate:"teplus.settings.gameplay.extract_enchantments",fallback:"Extract enchantments",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.extract_enchantments.desc",fallback:"Separate custom enchantments from an enchanted item using the Technical Anvil"}}\
      },initial:$(extrmd),on_true:"0",on_false:"1"},\
    {type:"minecraft:boolean",key:"input_xpcrtlm",label:{\
        translate:"teplus.settings.gameplay.increase_experience_tier",fallback:"Experience crystal update",hover_event:{action:"show_text",value:{translate:"teplus.settings.gameplay.increase_experience_tier.desc",fallback:"Allow the increase of the Experience crystal Tier"}}\
      },initial:$(xpcrtlm),on_true:"0",on_false:"1"},\
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