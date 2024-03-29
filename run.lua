-- Lightday calculation by latitude and day number

--[[
  Version: 1
  Last mod.: 2024-02-26
]]

-- package.path = package.path .. ';../../?.lua'
require('workshop.base')

local initial_latitude = 55.0
local initial_daynum = tonumber(os.date('%j'))

local tui = require('tek.ui')

local hor_group = request('!.frontend.tekui.hor_group')
local ver_group = request('!.frontend.tekui.ver_group')
local create_window = request('!.frontend.tekui.window')
local install_timer_routine = request('!.frontend.tekui.install_timer_routine')

local el_label_latitude = request('parts.el_label_latitude')

local el_scrollbar_latitude = request('parts.el_scrollbar_latitude')
-- local t2s = request('!.table.as_lua_code')
-- print('!', t2s(el_scrollbar_latitude))
el_scrollbar_latitude.Value = initial_latitude

local el_text_latitude = request('parts.el_text_latitude')

local el_label_daynum = request('parts.el_label_daynum')

local el_scrollbar_daynum = request('parts.el_scrollbar_daynum')
el_scrollbar_daynum.Value = initial_daynum

local el_text_daynum = request('parts.el_text_daynum')

local el_label_lightday = request('parts.el_label_lightday')
local el_scrollbar_lightday = request('parts.el_scrollbar_lightday')
local el_text_lightday = request('parts.el_text_lightday')

local update_lightday = request('parts.update_lightday')

local content =
  ver_group(
    nil,
    {Width = 'free'},
    hor_group(
      nil,
      {},
      el_label_latitude,
      el_scrollbar_latitude,
      el_text_latitude
    ),
    hor_group(
      nil,
      {},
      el_label_daynum,
      el_scrollbar_daynum,
      el_text_daynum
    ),
    hor_group(
      nil,
      {},
      el_label_lightday,
      el_scrollbar_lightday,
      el_text_lightday
    )
  )

local main_window =
  create_window('Lightday length calculator', {}, content)

local app = tui.Application:new()
tui.Application.connect(main_window)
app:addMember(main_window)

el_scrollbar_latitude:setValue('Value', initial_latitude, true)
el_scrollbar_daynum:setValue('Value', initial_daynum, true)
install_timer_routine(app, update_lightday)

main_window:setValue('Status', 'show')
app:run()

--[[
  2020-03-12
  2024-02-26
]]
