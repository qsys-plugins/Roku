-- Control Aliases
  --Remote Page
Pwr = Controls.Pwr
Back = Controls.Back
Home = Controls.Home
Up = Controls.Up
Down = Controls.Down
Left = Controls.Left
Right = Controls.Right
Ok = Controls.Ok
Loop = Controls.Loop
Astk = Controls.Astk
Prev = Controls.Prev
Play = Controls.Play
Next = Controls.Next
App = Controls.App

  --App Page
App = {}
for i=1,30 do
  table.insert(App,Controls["App"..i])
end

  --Settings Page
IP = Controls.IP
Connect = Controls.Connect
Status = Controls.Status
DisDev = Controls.Discovery
DisDevs = Controls.DisDev
Model = Controls.Model
SWVer = Controls.SWVer
SN = Controls.SN
DevName = Controls.DevName


-- Global Variables
debugBP = false
debugRx = false
debugDis = false


-- Lookup Tables
SelApp = {}
DisDevsIP = {}
RokuPoll = {}
status_state = { OK = 0, COMPROMISED = 1, FAULT = 2, NOTPRESENT = 3, MISSING = 4, INITIALIZING = 5 }

--Sockets
Discover = UdpSocket.New()
RokuListen = TcpSocket.New()


--Timers
DiscoverTimeOut = Timer.New()
HeartBeat = Timer.New()

--Include
rapidjson = require("rapidjson")
require("LuaXML")


--Functions
function Init()
  IP.String = "Input IP Here"
  DisDevs.String = "Click \"DISCOVERY\" to find Roku"
  Model.String = "Connect Device..."
  SWVer.String = "Connect Device..."
  SN.String = "Connect Device..."
  DevName.String = "Connect Device..."
  DisEn = 0
  DisDev.Boolean = false
  Connect.Boolean = false
  DisTO = 5
  HB = 10
end

function StatusFn(msg, state)
  Status.Value = status_state[state]
  --Status.String = msg
end

function Send(Type, Cmd, ID, EH)
  if Connect.Value == 1 then
    if Type == "Up" then
      HttpClient.Upload{
        Url = string.format("http://%s:8060/%s/%s",IP.String,Cmd,ID),
        Method = "POST",
        Data = "",
        EventHandler = EH
      }
    elseif Type == "Dn" then
      HttpClient.Download{ 
        Url = string.format("http://%s:8060/%s/%s",IP.String,Cmd,ID), 
        Method = "POST", 
        Data = "", 
        EventHandler = EH
      }
    end
  end
end

function Discovery()
  if debugDis then print("Discovery Function Called") else end
  while #DisDevsIP ~= 0 do rawset(DisDevsIP, #DisDevsIP, nil) end
  if DisEn == 1 then
    Discover:Open(_, 1900)
    local data = 'M-SEARCH * HTTP/1.1'.."\r\n"..'HOST: 239.255.255.250:1900'.."\r\n"..'MAN: "ssdp:discover"'.."\r\n"..'MX: 1'.."\r\n"..'ST: urn:dial-multiscreen-org:service:dial:1'.."\r\n\r\n"
    Discover:Send( "239.255.255.250", 1900, data)
  elseif DisEn == 0 then 
  end  
end

function ChangeLegend(AppID)
  local legend = rapidjson.encode{
    DrawChrome = false,
    IconData = ChanData[ ChLookup[AppID] ].PNG
  }
  App[ ChLookup[AppID] ].Legend = legend
end

function ParseResponse (tbl, code, data, err, headers)
  if debugBP then print("ParseResponse Function Called") end
  if debugRx then print(data) end
  local datat = xml.eval(data)
  rokudata = {}
  if datat[0]=="device-info" then
    for _,element in ipairs(datat) do
      local key,val = element[0],element[1]
      local keynew = string.gsub(key, "%-", "_") 
      if val==nil then
        val=""
      elseif val=="true" or val=="false" then
        val = val=="true"
      elseif not val:find("%D") then
        val = tonumber(val)
      end
      rokudata[keynew] = val
    end
  end
  SN.String = rokudata.serial_number
  Model.String = rokudata.model_name.." "..rokudata.model_number
  SWVer.String = rokudata.software_version
  DevName.String = rokudata.user_device_name
end

function ParseAppResponse (tbl, code, data, err, headers)
  if debugBP then print("ParseResponse Function Called") else end
  if debugRx then print(data) else end
  local datat = xml.eval(data)
  ChanData, ChLookup = {},{}
    if datat[0]=="apps" then
      for _,element in ipairs(datat) do
        table.insert(ChanData,{ ID = tonumber(element.id), AppName = element[1] })
        ChLookup[element.id]=#ChanData
        LastIconReq=element.id
        GetIcon(element.id)
      end
    end
    for ix,chan in ipairs(App) do
      chan.IsInvisible = ix > #ChanData
      if ix>#ChanData then chan.Legend="" end
    end
end

function ParseBPResponse (tbl, code, data, err, headers)
  print(code)
    if code == 200 then 
    StatusFn("Success", "OK") 
  else 
    StatusFn("Fault", "MISSING")
  end
end

function TablePretty(tbl,sort)
  return rapidjson.encode(tbl,{ pretty=true, sort_keys=sort })
end

function PollRoku()
  if debugBP then print("PollRoku Function Called") else end
  if debugRx then print("Polling Roku") else end
  Send("Dn","query", "device-info", ParseResponse)
end

function PollApps()
  if debugBP then print("PollApps Function Called") else end
  if debugRx then print("Polling Roku") else end
  Send("Dn","query", "apps", ParseAppResponse)
end

function GetIcon(AppID)
  local function ParseIconResponse (tbl, code, data, err, headers)
    if debugBP then print("ParseIconResponse Function Called") else end
    if debugRx then print(data) else end
    AppIconPNG = data
    ChanData[ ChLookup[AppID] ].PNG = Crypto.Base64Encode(data)
    ChangeLegend(AppID)
  end
  if debugBP then print("GetIcon Function Called") else end
  if debugRx then print("Polling Roku") else end
  Send("Dn","query/icon", AppID, ParseIconResponse)
end

function IsEmulated()
  if System.IsEmulating then
    DisDev.IsDisabled = true
    DisDevs.String = "Cannot discover while emulated"
    DisDevs.Color = "Red"
  else
    DisDevs.String = "Click \"DISCOVERY\" to find Roku"
  end
end


--Event Handlers
  --Remote Page
Pwr.EventHandler = function ()
  if debugBP then print("Power Pressed") else end
  Send("Up","keypress", "poweroff", ParseBPResponse)
end

Back.EventHandler = function ()
  if debugBP then print("Back Pressed") else end
  Send("Up","keypress", "back", ParseBPResponse)
end

Home.EventHandler = function ()
  if debugBP then print("Home Pressed") else end
  Send("Up","keypress", "home", ParseBPResponse)
end

Up.EventHandler = function ()
  if debugBP then print("Up Pressed") else end
  Send("Up","keypress", "up", ParseBPResponse)
end

Down.EventHandler = function ()
  if debugBP then print("Down Pressed") else end
  Send("Up","keypress", "down", ParseBPResponse)
end

Left.EventHandler = function ()
  if debugBP then print("Left Pressed") else end
  Send("Up","keypress", "left", ParseBPResponse)
end

Right.EventHandler = function ()
  if debugBP then print("Right Pressed") else end
  Send("Up","keypress", "right", ParseBPResponse)
end

Ok.EventHandler = function ()
  if debdebugBPug then print("Ok Pressed") else end
  Send("Up","keypress", "select", ParseBPResponse)
end

Loop.EventHandler = function ()
  if debugBP then print("Loop Pressed") else end
  Send("Up","keypress", "poweroff", ParseBPResponse)
end

Astk.EventHandler = function ()
  if debugBP then print("Astk Pressed") else end
  Send("Up","keypress", "info", ParseBPResponse)
end

Prev.EventHandler = function ()
  if debugBP then print("Prev Pressed") else end
  Send("Up","keypress", "Rev", ParseBPResponse)
end

Play.EventHandler = function ()
  if debugBP then print("Play Pressed") else end
  Send("Up","keypress", "play", ParseBPResponse)
end

Next.EventHandler = function ()
  if debugBP then print("Next Pressed") else end
  Send("Up","keypress", "Fwd", ParseBPResponse)
end

  --Apps Page
for ix,app in ipairs(App) do
  app.EventHandler = function()
    if debugBP then print("App["..ix.."] Pressed") else end
    local ID = ChanData[ix].ID
    Send("Up","launch", ID, ParseBPResponse)
  end 
end

  --Settings Page
Connect.EventHandler = function()
  if Connect.Value == 1 then
    if debugBP then print("Connect High") else end
    PollRoku()
    PollApps()
    HeartBeat:Start(HB)
  elseif Connect.Value == 0 then
    if debugBP then print("Connect Low") else end
    HeartBeat:Stop(HB)
  end
end

DisDev.EventHandler = function()
  if DisDev.Value == 1 then
    if debugBP or debugDis then print("Discovery On") else end
    DisEn = 1
    Discovery()
  elseif DisDev.Value == 0 then
    if debugBP or debugDis then print("Discovery Off") else end
    DisEn = 0
    DisDev.String = "Click \"DISCOVERY\" to find Roku"
  end
end

DisDevs.EventHandler = function()
  IP.String = DisDevs.String
end

Discover.EventHandler = function(Discover, packet)
  DiscoverTimeOut:Start(DisTO)
  if packet.Data:find("Roku") then
    Rokuname = string.gmatch(packet.Data, "^Roku/")
    if debugDis then print(packet.Data, packet.Address) end
    table.insert(DisDevsIP, 1, packet.Address)
    DisDevs.Choices = DisDevsIP
    DisDevs.String = "Click to select discovered device"
  else
  end
end

DiscoverTimeOut.EventHandler = function()
  DisDev.Value = 0
  DisDevs.String = "Click \"DISCOVERY\" to find Roku"
  while #DisDevsIP ~= 0 do rawset(DisDevsIP, #DisDevsIP, nil) end
  DisDevs.Choices = DisDevsIP
end

HeartBeat.EventHandler = function ()
  if HeartBeat then 
    PollApps()
  end
end

-- Called on START
Init()
IsEmulated()