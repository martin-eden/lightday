local text_label = request('!.frontend.tekui.text_label')
local valname_minwidth = request('valname_minwidth')

return
  text_label('Latitude', {MinWidth = valname_minwidth})
