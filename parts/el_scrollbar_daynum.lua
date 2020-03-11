local tui = require('tek.ui')
local scrollbar = request('!.frontend.tekui.scrollbar')

local el_text_daynum = request('el_text_daynum')
local daynum_to_isodate = request('daynum_to_isodate')

local min_day_num = request('min_day_num')
local max_day_num = request('max_day_num')
local initial_daynum = request('initial_daynum')

local el_scrollbar_daynum =
  scrollbar(
    'el_scrollbar_daynum',
    min_day_num,
    max_day_num,
    {Value = initial_daynum, Step = 1, Width = 'free'}
  )

el_scrollbar_daynum:addNotify(
  'Value',
  tui.NOTIFY_ALWAYS,
  {
    tui.NOTIFY_SELF,
    tui.NOTIFY_FUNCTION,
    function(self, value)
      value = tonumber(value)
      el_text_daynum:setValue('Text', daynum_to_isodate(value))
    end,
    tui.NOTIFY_VALUE,
  }
)

return el_scrollbar_daynum
