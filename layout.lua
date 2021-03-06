-- Local Variables
  local page_index = props["page_index"].Value

-- Color Lookup Table
  local Black     = { 0  , 0  , 0   }
  local White     = { 255, 255, 255 }
  local BGBlue    = { 191, 226, 249 }
  local DKBlue    = { 79 , 147, 196 }
  local DKBlue2   = { 112, 166, 207 }
  local LTBlue    = { 110, 198, 241 }
  local BtnBlue   = { 30 , 90 , 115 }
  local BtnBlueOn = { 46 , 148, 191 }
  local BtnGray   = { 233, 233, 233 }
  local BtnGryOff = { 123, 123, 123 }
  local BtnRed    = { 255, 0  , 0   }
  local BtnGrn    = { 0  , 199, 0   }
  local BtnYelo   = { 238, 243, 0   }
  local TxtBlue   = { 0  , 87 , 150 }
  local TxtGray   = { 201, 201, 201 }
  local TxtGray2  = { 217, 217, 217 }
  local TxtStok   = { 163, 163, 163 }
  local TxtStok2  = { 103, 103, 103 }
  local TxtStok3  = { 74 , 117, 140 }
  local MtrFill   = { 110, 198, 241 }

-- Logos
RokuLogo = "PHN2ZyBpZD0iUm9rdSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB2aWV3Qm94PSIwIDAgOTk5IDMxMC4xNyI+PHRpdGxlPlJva3UgbG9nbyBXaGl0ZTwvdGl0bGU+PHBhdGggaWQ9IktVIiBkPSJNNjgwLDY2LjMyLDU4Ni4yNSwxNjAuMVY2Nkg1MDQuODRWMzA1LjE0aDgxLjQxdi05N2w5Ny45Miw5N0g3ODYuNjNMNjYyLjIsMTgwLjY5bDEwMy4wNy0xMDNWMjE5LjU3YzAsNDcuMTEsMjguMzMsOTAuNTksOTkuNjgsOTAuNTksMzMuODgsMCw2NS0xOS4yMSw4MC4wNy0zNi41OWwzNi42LDMxLjU3SDk5OVY2Ni4zMkg5MTcuNTlWMjIwLjk0Yy05LjE2LDE2LTIxLjk0LDI2LjA2LTQxLjY4LDI2LjA2LTIwLDAtMjkuMjItMTEuODctMjkuMjItNDkuODVWNjYuMzJaIiBzdHlsZT0iZmlsbDojZmZmIi8+PHBhdGggaWQ9Ik8iIGQ9Ik0zNjMuNjUsMTIwLjNjLTIxLjUsMC0zOS43OSwyOS4yMi0zOS43OSw2NS40czE4LjI5LDY1LjQ1LDM5Ljc5LDY1LjQ1YzIyLDAsNDAuMjYtMjkuMjcsNDAuMjYtNjUuNDVzLTE4LjI2LTY1LjQtNDAuMjYtNjUuNE00ODksMTg1LjdjMCw2OS4xMi01Ni4yLDEyNC40Ny0xMjUuMzIsMTI0LjQ3YTEyNC40NiwxMjQuNDYsMCwxLDEsMC0yNDguOTFDNDMyLjc3LDYxLjI2LDQ4OSwxMTYuNjQsNDg5LDE4NS43IiBzdHlsZT0iZmlsbDojZmZmIi8+PHBhdGggaWQ9IlIiIGQ9Ik0xNTcuMzQsMTAyYzAtMjguMzgtMjIuODMtNTEuMjQtNTAuNzUtNTEuMjRIODEuNDJ2MTAyaDI1LjE3QTUwLjkyLDUwLjkyLDAsMCwwLDE1Ny4zNCwxMDJNMjcxLjgzLDMwNS4zNkgxNzkuNDRMMTA2LjA5LDIwMy41N0g4MS40MlYzMDUuMTRIMFYwSDExNi42NGM2Ny4yNCwwLDEyMi4xMyw0NS43MywxMjIuMTMsMTAyLDAsMzQuMzEtMjEsNjUtNTMuMDcsODMuNzFsODYuMTMsMTE5LjY2IiBzdHlsZT0iZmlsbDojZmZmIi8+PC9zdmc+"

--Controls Layout
  if page_index == 1 then
    layout["Back"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {19 , 206},
      Size = {55,28},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 10,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 1,
  }

  layout["Down"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {56 , 308},
      Size = {35,33},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 6,
      Padding = 0,
      Margin = 0,
      IsReadOnly = false,
      ZOrder = 2,
  }

  layout["Home"] = {
      Style = "Button",
      ButtonStyle = "Toggle",
      Position = {75 , 206},
      Size = {55,28},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 10,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 4,
  }

  layout["Pwr"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {92 , 71},
      Size = {34,32},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 20,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 10,
  }

  layout["Up"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {56 , 240},
      Size = {35,33},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 6,
      Padding = 0,
      Margin = 0,
      IsReadOnly = false,
      ZOrder = 11,
  }

  layout["Right"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {91 , 273},
      Size = {35,33},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 6,
      Padding = 0,
      Margin = 0,
      IsReadOnly = false,
      ZOrder = 14,
  }

  layout["Left"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {21 , 273},
      Size = {35,33},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 6,
      Padding = 0,
      Margin = 0,
      IsReadOnly = false,
      ZOrder = 13,
  }

  layout["Ok"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {56 , 273},
      Size = {35,33},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[OK]],
      TextColor = {0,0,0,255},
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 20,
      Padding = 0,
      Margin = 0,
      IsReadOnly = false,
      ZOrder = 12,
  }

  layout["Prev"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {20 , 130},
      Size = {25,35},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 6,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 17,
  }

  layout["Next"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {104 , 130},
      Size = {25,35},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 6,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 18,
  }

  layout["Play"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {48 , 130},
      Size = {53,34},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 8,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 19,
  }

  layout["Loop"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {20 , 103},
      Size = {53,25},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 6,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 20,
  }

  layout["Astk"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {75 , 103},
      Size = {53,25},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      UnlinkOffColor = true,
      OffColor = {57,57,57,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 6,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 21,
  }

  table.insert( graphics, {
      Type = "Svg",
      Image = RokuLogo,
      Position = {26 , 9},
      Size = {96,30}
    })

  table.insert( graphics, {
      Type = "GroupBox",
      Text = [[Transport]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Left",
      StrokeWidth = 1,
      StrokeColor = {0,0,0,255},
      CornerRadius = 0,
      Color = {105,105,105,255},
      Fill = {105,105,105,255},
      Position = {8 , 54},
      Size = {132,120},
      Padding = 0,
      Margin = 0,
      ZOrder = -3,
    })

  table.insert( graphics, {
      Type = "Array",
      Text = [[Power]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      CornerRadius = 0,
      Color = {255,255,255,255},
      Position = {87 , 56},
      Size = {41,17},
      Padding = 0,
      Margin = 0,
      ZOrder = -2,
    })

  table.insert( graphics, {
      Type = "GroupBox",
      Text = [[Navigation]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Left",
      StrokeWidth = 1,
      StrokeColor = {0,0,0,255},
      CornerRadius = 0,
      Color = {105,105,105,255},
      Fill = {105,105,105,255},
      Position = {8 , 180},
      Size = {132,170},
      Padding = 0,
      Margin = 0,
      ZOrder = -4,
    })

  table.insert( graphics, {
      Type = "GroupBox",
      Text = [[]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Left",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Color = {51,51,51,255},
      Fill = {65,47,135,255},
      Position = {0 , 0},
      Size = {148,47},
      Padding = 0,
      Margin = 0,
      ZOrder = -5,
    })

  table.insert( graphics, {
      Type = "GroupBox",
      Text = [[]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Left",
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Fill = {45,45,45,255},
      Position = {0 , 46},
      Size = {148,312},
      Padding = 0,
      Margin = 0,
      ZOrder = -6,
    })


  elseif page_index == 2 then

  layout["App1"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {7 , 85},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 5,
  }

  layout["App2"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {72 , 85},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 6,
  }

  layout["App3"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {137 , 85},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 7,
  }
  layout["App4"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {202 , 85},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 8,
  }

  layout["App5"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {267 , 85},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 9,
  }

  layout["App6"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {7 , 138},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 10,
  }

  layout["App7"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {72 , 138},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 11,
  }

  layout["App8"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {137 , 138},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 12,
  }

  layout["App9"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {202 , 138},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 13,
  }

  layout["App10"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {267 , 138},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 14,
  }

  layout["App11"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {7 , 190},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 15,
  }

  layout["App12"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {72 , 190},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 16,
  }

  layout["App13"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {137 , 190},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 17,
  }

  layout["App14"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {202 , 190},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 18,
  }

  layout["App15"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {267 , 190},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 19,
  }

  layout["App16"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {7 , 242},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 20,
  }

  layout["App17"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {72 , 242},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 21,
  }

  layout["App18"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {137 , 242},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 22,
  }

  layout["App19"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {202 , 242},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 23,

  }

  layout["App20"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {267 , 242},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 24,
  }


  layout["App21"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {7 , 293},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 15,
  }

  layout["App22"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {72 , 293},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 16,
  }

  layout["App23"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {137 , 293},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 17,
  }

  layout["App24"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {202 , 293},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 18,
  }

  layout["App25"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {267 , 293},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 19,
  }

  layout["App26"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {7 , 345},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 20,
  }

  layout["App27"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {72 , 345},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 21,
  }

  layout["App28"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {137 , 345},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 22,
  }

  layout["App29"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {202 , 345},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 23,

  }

  layout["App30"] = {
      Style = "Button",
      ButtonStyle = "Trigger",
      Position = {267 , 345},
      Size = {63,50},
      HTextAlign = "Center",
      FontSize = 9,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 2,
      IsReadOnly = false,
      ZOrder = 24,
  }

  table.insert( graphics, {
      Type = "Svg",
      Image = RokuLogo,
      Position = {121 , 7},
      Size = {96,30},
      ZOrder = 26,
    })

  table.insert( graphics, {
      Type = "Header",
      Text = [[AVAILABLE CHANNELS]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeColor = {0,0,0,255},
      Color = {0,0,0,255},
      Fill = {0,0,0,0},
      Position = {7 , 63},
      Size = {321,6},
      ZOrder = 27,
    })

  table.insert( graphics, {
      Type = "GroupBox",
      Text = [[]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Left",
      StrokeWidth = 1,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Color = {51,51,51,255},
      Fill = {128,128,128,255},
      Position = {0 , 0},
      Size = {337,402},
      Padding = 0,
      Margin = 0,
      ZOrder = 1,
    })

  table.insert( graphics, {
      Type = "GroupBox",
      Text = [[]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Left",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Color = {51,51,51,255},
      Fill = {65,47,135,255},
      Position = {0 , 0},
      Size = {337,47},
      Padding = 0,
      Margin = 0,
      ZOrder = 25,
    })

  elseif page_index == 3 then

    layout["Status"] = {
      Style = "Indicator",
      Position = {57 , 90},
      Size = {228,24},
      HTextAlign = "Center",
      FontSize = 14,
      Font = "Roboto",
      FontStyle="Regular",
      Color = {194,194,194,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      IsReadOnly = true,
      ZOrder = 5,
    }


    layout["Connect"] = {
      Style = "Button",
      ButtonStyle = "Toggle",
      Position = {188 , 57},
      Size = {97,19},
      HTextAlign = "Center",
      FontSize = 14,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[CONNECT]],
      Color = {0,255,0,255},
      UnlinkOffColor = true,
      OffColor = {127,127,127,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 2,
      Padding = 0,
      Margin = 0,
      IsReadOnly = false,
      ZOrder = 6,
    }

    layout["IP"] = {
      Style = "Text",
      TextBoxStyle = "Normal",
      Position = {57 , 57},
      Size = {121,19},
      HTextAlign = "Center",
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      IsReadOnly = false,
      ZOrder = 7,
    }

    layout["Discovery"] = {
      Style = "Button",
      ButtonStyle = "Toggle",
      Position = {18 , 185},
      Size = {80,22},
      HTextAlign = "Center",
      FontSize = 14,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[DISCOVERY]],
      Color = {0,255,0,255},
      UnlinkOffColor = true,
      OffColor = {127,127,127,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 2,
      Padding = 0,
      Margin = 0,
      IsReadOnly = false,
      ZOrder = 8,
    }

    layout["DisDev"] = {
      Style = "ComboBox",
      Position = {107 , 184},
      Size = {178,24},
      HTextAlign = "Center",
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      IsReadOnly = false,
      ZOrder = 11,
    }

    layout["Model"] = {
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {18 , 279},
      Size = {122,18},
      HTextAlign = "Center",
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[ Model]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      IsReadOnly = true,
      ZOrder = 22,
    }

    layout["SWVer"] = {
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {163 , 279},
      Size = {122,18},
      HTextAlign = "Center",
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[Software Version]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      IsReadOnly = true,
      ZOrder = 24,
    }

    layout["SN"] = {
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {18 , 326},
      Size = {122,18},
      HTextAlign = "Center",
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[Serial Number]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      IsReadOnly = true,
      ZOrder = 26,
    }

    layout["DevName"] = {
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {163 , 326},
      Size = {122,18},
      HTextAlign = "Center",
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[Device Name]],
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      IsReadOnly = true,
      ZOrder = 28,
    }

    layout["Code"] = {
      Style = "Text",
      TextBoxStyle = "Normal",
      Position = {4 , 352},
      Size = {2,2},
      HTextAlign = "Center",
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      Color = {255,255,255,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      IsReadOnly = true,
      ZOrder = 29,
    }

    table.insert( graphics, {
      Type = "Array",
      Text = [[IP]],
      FontSize = 14,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Right",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Color = {0,0,0,255},
      Fill = {0,0,0,0},
      Position = {33 , 58},
      Size = {21,16},
      Padding = 0,
      Margin = 0,
      ZOrder = 3,
  })

    table.insert( graphics, {
      Type = "Indicator",
      Text = [[Status]],
      FontSize = 14,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Right",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Color = {0,0,0,255},
      Fill = {0,0,0,0},
      Position = {10 , 94},
      Size = {45,16},
      Padding = 0,
      Margin = 0,
      ZOrder = 4,
  })

    table.insert( graphics, {
      Type = "Array",
      Text = [[DISCOVERED DEVICES:]],
      FontSize = 10,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Color = {51,51,51,255},
      Fill = {0,0,0,0},
      Position = {140 , 168},
      Size = {112,16},
      Padding = 0,
      Margin = 0,
      ZOrder = 16,
  })

    table.insert( graphics, {
      Type = "Array",
      Text = [[MODEL]],
      FontSize = 10,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Color = {51,51,51,255},
      Fill = {0,0,0,0},
      Position = {48 , 263},
      Size = {61,16},
      Padding = 0,
      Margin = 0,
      ZOrder = 23,
  })

    table.insert( graphics, {
      Type = "Array",
      Text = [[SOFTWARE VERSION]],
      FontSize = 10,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Color = {51,51,51,255},
      Fill = {0,0,0,0},
      Position = {163 , 263},
      Size = {122,16},
      Padding = 0,
      Margin = 0,
      ZOrder = 25,
  })

    table.insert( graphics, {
      Type = "Array",
      Text = [[SERIAL NUMBER]],
      FontSize = 10,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Color = {51,51,51,255},
      Fill = {0,0,0,0},
      Position = {18 , 310},
      Size = {122,16},
      Padding = 0,
      Margin = 0,
      ZOrder = 27,
  })

    table.insert( graphics, {
      Type = "Array",
      Text = [[Device Name]],
      FontSize = 10,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeWidth = 0,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 0,
      CornerRadius = 0,
      Color = {51,51,51,255},
      Fill = {0,0,0,0},
      Position = {193 , 310},
      Size = {61,16},
      Padding = 0,
      Margin = 0,
      ZOrder = 30,
  })

    table.insert( graphics, {
      Type = "GroupBox",
      Text = [[Network Setup]],
      FontSize = 16,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Left",
      StrokeWidth = 1,
      StrokeColor = {0,0,0,255},
      StrokeWidth = 1,
      CornerRadius = 8,
      Color = {51,51,51,255},
      Fill = {157,157,157,19},
      Position = {0 , 0},
      Size = {304,361},
      Padding = 0,
      Margin = 0,
      ZOrder = 1,
  })

  table.insert( graphics, {
      Type = "Header",
      Text = [[MANUAL SETUP]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeColor = {0,0,0,255},
      Color = {0,0,0,255},
      Fill = {0,0,0,0},
      Position = {12 , 38},
      Size = {279,6},
      ZOrder = 26,
    })

  table.insert( graphics, {
      Type = "Header",
      Text = [[DEVICE DISCOVERY]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeColor = {0,0,0,255},
      Color = {0,0,0,255},
      Fill = {0,0,0,0},
      Position = {12 , 150},
      Size = {279,6},
      ZOrder = 26,
    })

  table.insert( graphics, {
      Type = "Header",
      Text = [[DEVICE INFORMATION]],
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeColor = {0,0,0,255},
      Color = {0,0,0,255},
      Fill = {0,0,0,0},
      Position = {12 , 244},
      Size = {279,6},
      ZOrder = 26,
    })

  table.insert( graphics, {
      Type = "Text",
      Text = [[Version ]]..PluginInfo.Version,
      FontSize = 7,
      Font = "Roboto",
      FontStyle="Regular",
      HTextAlign = "Center",
      StrokeColor = {0,0,0,255},
      Color = {0,0,0,255},
      Fill = {0,0,0,0},
      Position = {253 , 348},
      Size = {47,10},
      ZOrder = 26,
    })

  end