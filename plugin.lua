-- Roku Control Test
-- by Eric Urbaniak / QSC Boulder / Amanda Abate / QSC Boulder
-- April 2019
-- Version 0.0.0.8 Notes: Put App buttons into for loop
-- Notes:

--[[ #include "info.lua" ]]

--Define Global Variables Here

--Define Functions Here
function GetPrettyName(props)
  return "Roku Control V "..PluginInfo.Version
end

function GetPages()
  pages = {}
  table.insert( pages, { name = "Remote"})
  table.insert( pages, { name = "Channels"})
  table.insert( pages, { name = "Settings"})
  return pages
end

function GetColor(props)
  return { 204, 204, 204 }
end

function GetProperties() -- No properties needed
  props = {}
  return props
 end

function GetControls(props)
  ctrls = {}

  --[[ #include "controls.lua" ]]

  return ctrls
end


function GetControlLayout(props)
  layout   = {}
  graphics = {}

  --[[ #include "layout.lua" ]]

  return layout, graphics
end


--------------------------------------------------------------------------
---------------------------START RUNTIME LOGIC----------------------------
--------------------------------------------------------------------------

--Start event based logic
if Controls then

--[[ #include "runtime.lua" ]]

-- Called on START
Init()
IsEmulated()

end
-----------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------END OF FILE------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
