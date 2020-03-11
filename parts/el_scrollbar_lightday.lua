local gauge = request('!.frontend.tekui.gauge')

return
  gauge(
    'el_scrollbar_lightday',
    0,
    24,
    {Value = 12, Width = 'free'}
  )
