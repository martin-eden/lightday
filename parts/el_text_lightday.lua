local text_label = request('!.frontend.tekui.text_label')
local numval_minwidth = request('numval_minwidth')

return
  text_label('', {Id = 'el_text_lightday', MinWidth = numval_minwidth})
