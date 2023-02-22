RegisterNetEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu')
AddEventHandler('AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu', function(data)
  local plyPos = GetEntityCoords(cache.ped)
  local plyHead = GetEntityHeading(cache.ped)
  local DoneText = ''
  if data.type == 'v1' or data == 'v1' then
    DoneText = "vector3("..plyPos.x..", "..plyPos.y..", "..plyPos.z..")"
  elseif data.type == 'v2' or data == 'v2' then
    DoneText = "vector4("..plyPos.x..", "..plyPos.y..", "..plyPos.z..", "..plyHead..")"
  elseif data.type == 'b1' or data == 'b1' then
    DoneText = "{x= "..plyPos.x..", y= "..plyPos.y..", z= "..plyPos.z.."}"
  elseif data.type == 'b2' or data == 'b2' then
    DoneText = "{x= "..plyPos.x..", y= "..plyPos.y..", z= "..plyPos.z..", h= "..plyHead.."}"
  elseif data.type == 't1' or data == 't1' then
    DoneText = "x= "..plyPos.x..", y= "..plyPos.y..", z= "..plyPos.z..""
  elseif data.type == 't2' or data == 't2' then
    DoneText = "x= "..plyPos.x..", y= "..plyPos.y..", z= "..plyPos.z..", h= "..plyHead..""
  elseif data.type == 's1' or data == 's1' then
    DoneText = "['x'] ="..plyPos.x..", ['y'] ="..plyPos.y..", ['z'] ="..plyPos.z..""
  elseif data.type == 's2' or data == 's2' then
    DoneText = "['x'] ="..plyPos.x..", ['y'] ="..plyPos.y..", ['z'] ="..plyPos.z..", ['h'] ="..plyHead..""
  elseif data.type == '1' or data == '1' then
    DoneText = ""..plyPos.x..", "..plyPos.y..", "..plyPos.z..""
  elseif data.type == '2' or data == '2' then
    DoneText = ""..plyPos.x..", "..plyPos.y..", "..plyPos.z..", "..plyHead..""
  elseif data.type == '3' or data == '3' then
    DoneText = ""..plyPos.x..", "..plyPos.y..""
  elseif data.type == '4' or data == '4' then
    DoneText = ""..plyHead..""
  end

  if DoneText ~= '' then
    lib.notify({
      title = 'Copied',
      description = DoneText,
      position = 'top',
      type = 'success'
    })
    lib.setClipboard(DoneText)
    DoneText = ''
  end
end)

RegisterNetEvent('AndiyScripts_GetPos:GetLocationOfPositionAndCopyYeasUseMenu')
AddEventHandler('AndiyScripts_GetPos:GetLocationOfPositionAndCopyYeasUseMenu', function(data)
  lib.showContext('command_menu_main')
end)

lib.registerContext({
  id = 'command_menu_main',
  title = 'Command Menu',
  options = {
    {
      title = 'Copy vector3(0,0,0)',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = 'v1'}
    },
    {
      title = 'Copy vector4(0,0,0)',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = 'v2'}
    },
    {
      title = 'Copy {x=0,y=0,z=0}',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = 'b1'}
    },
    {
      title = 'Copy {x=0,y=0,z=0,h=0}',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = 'b2'}
    },
    {
      title = 'Copy x=0,y=0,z=0',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = 't1'}
    },
    {
      title = 'Copy x=0,y=0,z=0,h=0',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = 't2'}
    },
    {
      title = 'Copy [x]=0,[y]=0,[z]=0',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = 's1'}
    },
    {
      title = 'Copy [x]=0,[y]=0,[z]=0,[h]=0',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = 's2'}
    },
    {
      title = 'Copy 0,0,0 (x,y,z)',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = '1'}
    },
    {
      title = 'Copy 0,0,0,0 (x,y,z,h)',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = '2'}
    },
    {
      title = 'Copy 0,0 (x,y)',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = '3'}
    },
    {
      title = 'Copy 0 (h)',
			arrow = false,
			event = 'AndiyScripts_GetPos:GetLocationOfPositionAndCopyNotUseMenu',
			args = {type = '4'}
    },
  },
})