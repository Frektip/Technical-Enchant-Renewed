$dialog show @s {type:"minecraft:confirmation",\
  title:{translate:"teplus.settings.chests_tittle",fallback:"Chest loot settings",color:"#6cc685",bold:1b},\
  inputs:[\
    {type:"minecraft:single_option",key:"input_chests",width:250,label:{\
        translate:"teplus.settings.chests.allow_chest_loot",fallback:"Get enchantments from chest loot"\
      },options:[\
        {id:"0",display:{translate:"teplus.settings.option.enable",fallback:"Enable",color:"green"},initial:$(chests_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.disable",fallback:"Disable",color:"red"},initial:$(chests_opt2)}\
      ]},\
    {type:"minecraft:single_option",key:"input_mineshaft",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.mineshaft",fallback:"Mineshaft",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(mineshaft_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(mineshaft_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_mineshaft_rate",width:250,label:[\
        {translate:"teplus.chests.mineshaft",fallback:"Mineshaft"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(mineshaft_rate)},\
    {type:"minecraft:single_option",key:"input_ancity",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.ancient_city",fallback:"Ancient City",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(ancity_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(ancity_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_ancity_rate",width:250,label:[\
        {translate:"teplus.chests.ancient_city",fallback:"Ancient City"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(ancity_rate)},\
    {type:"minecraft:single_option",key:"input_bastion",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.bastion",fallback:"Bastion",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(bastion_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(bastion_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_bastion_rate",width:250,label:[\
        {translate:"teplus.chests.bastion",fallback:"Bastion"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(bastion_rate)},\
    {type:"minecraft:single_option",key:"input_btreasure",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.burried_treasure",fallback:"Buried Treasure",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(btreasure_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(btreasure_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_btreasure_rate",width:250,label:[\
        {translate:"teplus.chests.burried_treasure",fallback:"Buried Treasure"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(btreasure_rate)},\
    {type:"minecraft:single_option",key:"input_despyram",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.desert_pyramid",fallback:"Desert Pyramid",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(despyram_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(despyram_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_despyram_rate",width:250,label:[\
        {translate:"teplus.chests.desert_pyramid",fallback:"Desert Pyramid"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(despyram_rate)},\
    {type:"minecraft:single_option",key:"input_endcity",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.endcity",fallback:"End City",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(endcity_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(endcity_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_endcity_rate",width:250,label:[\
        {translate:"teplus.chests.endcity",fallback:"End City"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(endcity_rate)},\
    {type:"minecraft:single_option",key:"input_igloo",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.igloo",fallback:"Igloo",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(igloo_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(igloo_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_igloo_rate",width:250,label:[\
        {translate:"teplus.chests.igloo",fallback:"Igloo"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(igloo_rate)},\
    {type:"minecraft:single_option",key:"input_jngltmp",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.jungle_temple",fallback:"Jungle Temple",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(jngltmp_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(jngltmp_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_jngltmp_rate",width:250,label:[\
        {translate:"teplus.chests.jungle_temple",fallback:"Jungle Temple"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(jngltmp_rate)},\
    {type:"minecraft:single_option",key:"input_fortress",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.fortress",fallback:"Fortress",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(fortress_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(fortress_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_fortress_rate",width:250,label:[\
        {translate:"teplus.chests.fortress",fallback:"Fortress"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(fortress_rate)},\
    {type:"minecraft:single_option",key:"input_outpost",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.outpost",fallback:"Outpost",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(outpost_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(outpost_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_outpost_rate",width:250,label:[\
        {translate:"teplus.chests.outpost",fallback:"Outpost"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(outpost_rate)},\
    {type:"minecraft:single_option",key:"input_ruinport",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.ruined_portal",fallback:"Ruined Portal",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(ruinport_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(ruinport_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_ruinport_rate",width:250,label:[\
        {translate:"teplus.chests.ruined_portal",fallback:"Ruined Portal"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(ruinport_rate)},\
    {type:"minecraft:single_option",key:"input_shipwreck",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.shipwreck",fallback:"Shipwreck",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(shipwreck_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(shipwreck_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_shipwreck_rate",width:250,label:[\
        {translate:"teplus.chests.shipwreck",fallback:"Shipwreck"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(shipwreck_rate)},\
    {type:"minecraft:single_option",key:"input_dungeon",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.dungeon",fallback:"Dungeon",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(dungeon_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(dungeon_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_dungeon_rate",width:250,label:[\
        {translate:"teplus.chests.dungeon",fallback:"Dungeon"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(dungeon_rate)},\
    {type:"minecraft:single_option",key:"input_stronghold",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.stronghold",fallback:"Stronghold",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(stronghold_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(stronghold_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_stronghold_rate",width:250,label:[\
        {translate:"teplus.chests.stronghold",fallback:"Stronghold"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(stronghold_rate)},\
    {type:"minecraft:single_option",key:"input_library",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.library",fallback:"Library",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(library_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(library_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_library_rate",width:250,label:[\
        {translate:"teplus.chests.library",fallback:"Library"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(library_rate)},\
    {type:"minecraft:single_option",key:"input_undwruin",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.underwater_ruin",fallback:"Underwater Ruin",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(undwruin_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(undwruin_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_undwruin_rate",width:250,label:[\
        {translate:"teplus.chests.underwater_ruin",fallback:"Underwater Ruin"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(undwruin_rate)},\
    {type:"minecraft:single_option",key:"input_village",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.village",fallback:"Village",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(village_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(village_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_village_rate",width:250,label:[\
        {translate:"teplus.chests.village",fallback:"Village"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(village_rate)},\
    {type:"minecraft:single_option",key:"input_mansion",width:250,label:[\
        {translate:"teplus.settings.chests.can_generate_in",fallback:"Can generate in"}," ",{translate:"teplus.chests.mansion",fallback:"Mansion",color:"aqua"}\
      ],options:[\
        {id:"0",display:{translate:"teplus.settings.option.yes",fallback:"YES",color:"green"},initial:$(mansion_opt1)},\
        {id:"1",display:{translate:"teplus.settings.option.no",fallback:"NO",color:"red"},initial:$(mansion_opt2)}\
      ]},\
    {type:"minecraft:number_range",key:"input_mansion_rate",width:250,label:[\
        {translate:"teplus.chests.mansion",fallback:"Mansion"},{text:" %",color:"#d3912f"},{translate:"teplus.misc.rates",fallback:"rates",color:"#d3912f"}\
      ],start:0,end:100,step:1,initial:$(mansion_rate)}\
  ],\
  yes:{label:{translate:"teplus.settings.confirm",fallback:"Apply Changes"},\
    action:{type:"minecraft:dynamic/run_command",\
      template:"/function teplus:admin/settings/chests/apply_changes {input_chests:\u0024(input_chests), input_mineshaft:\u0024(input_mineshaft), input_mineshaft_rate:\u0024(input_mineshaft_rate), input_ancity:\u0024(input_ancity), input_ancity_rate:\u0024(input_ancity_rate), input_bastion:\u0024(input_bastion), input_bastion_rate:\u0024(input_bastion_rate), input_btreasure:\u0024(input_btreasure), input_btreasure_rate:\u0024(input_btreasure_rate), input_despyram:\u0024(input_despyram), input_despyram_rate:\u0024(input_despyram_rate), input_endcity:\u0024(input_endcity), input_endcity_rate:\u0024(input_endcity_rate), input_igloo:\u0024(input_igloo), input_igloo_rate:\u0024(input_igloo_rate), input_jngltmp:\u0024(input_jngltmp), input_jngltmp_rate:\u0024(input_jngltmp_rate), input_fortress:\u0024(input_fortress), input_fortress_rate:\u0024(input_fortress_rate), input_outpost:\u0024(input_outpost), input_outpost_rate:\u0024(input_outpost_rate), input_ruinport:\u0024(input_ruinport), input_ruinport_rate:\u0024(input_ruinport_rate), input_shipwreck:\u0024(input_shipwreck), input_shipwreck_rate:\u0024(input_shipwreck_rate), input_dungeon:\u0024(input_dungeon), input_dungeon_rate:\u0024(input_dungeon_rate), input_stronghold:\u0024(input_stronghold), input_stronghold_rate:\u0024(input_stronghold_rate), input_library:\u0024(input_library), input_library_rate:\u0024(input_library_rate), input_undwruin:\u0024(input_undwruin), input_undwruin_rate:\u0024(input_undwruin_rate), input_village:\u0024(input_village), input_village_rate:\u0024(input_village_rate), input_mansion:\u0024(input_mansion), input_mansion_rate:\u0024(input_mansion_rate)}"\
    }\
  },\
  no:{label:{translate:"teplus.settings.cancel",fallback:"Cancel"}}\
}