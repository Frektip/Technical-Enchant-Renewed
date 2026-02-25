# ================================================= #
#       BUILD TECHNICAL ANVIL MERGE MODE UI
# ================================================= #

data modify storage teplus:ui Global[{profile:"technical_anvil"}].Merge set value []

# --------------- First Row --------------- #
# Slot 0 : Blank
function teplus:core/ui/set_blank {slot:0,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 1 : Blank
function teplus:core/ui/set_blank {slot:1,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 3 : Blank
function teplus:core/ui/set_blank {slot:3,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}


# Slot 5 : Blank
function teplus:core/ui/set_blank {slot:5,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 7 : Blank
function teplus:core/ui/set_blank {slot:7,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 8 : Blank
function teplus:core/ui/set_blank {slot:8,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Second Row --------------- #
# Slot 9 : Blank
function teplus:core/ui/set_blank {slot:9,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 10 : Blank
function teplus:core/ui/set_blank {slot:10,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}

# Slot 12 : Blank
function teplus:core/ui/set_blank {slot:12,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 14 : Blank
function teplus:core/ui/set_blank {slot:14,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}

# Slot 16 : Blank
function teplus:core/ui/set_blank {slot:16,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 17 : Blank
function teplus:core/ui/set_blank {slot:17,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Third Row --------------- #
# Slot 18 : Blank
function teplus:core/ui/set_blank {slot:18,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 19 : Blank
function teplus:core/ui/set_blank {slot:19,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}


# Slot 25 : Blank
function teplus:core/ui/set_blank {slot:25,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 26 : Merge Frame + Blank
function teplus:core/ui/set_blank {slot:26,mode:"Merge",cmd:{strings:["teplus:technical_anvil.merge_frame"]}}