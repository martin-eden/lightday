local text_label = request('!.frontend.tekui.text_label')
local valname_minwidth = request('valname_minwidth')

return
  text_label('Day number', {MinWidth = valname_minwidth})
