local tui = require('tek.ui')
local scrollbar = request('!.frontend.tekui.scrollbar')

local el_scrollbar_latitude =
  scrollbar(
    'el_scrollbar_latitude',
    -90,
    90,
    {Value = 3.1415, Width = 'free'}
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
