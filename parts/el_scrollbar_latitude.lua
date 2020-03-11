local tui = require('tek.ui')
local scrollbar = request('!.frontend.tekui.scrollbar')
local initial_latitude = request('initial_latitude')

local el_scrollbar_latitude =
  scrollbar(
    'el_scrollbar_latitude',
    -90,
    90,
    {Value = initial_latitude, Width = 'free'}
  )

el_scrollbar_latitude:addNotify(
  'Value',
  tui.NOTIFY_ALWAYS,
  {
    tui.NOTIFY_ID,
    'el_text_latitude',
    'setValue',
    'Text',
    tui.NOTIFY_FORMAT,
    '%2.2f°'
  }
)

return el_scrollbar_latitude
