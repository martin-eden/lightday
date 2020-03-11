--[[
  Represent 7.691 hours as "7:41:28".

  There is tricky case when <num_hours> is NaN. Instead of trying to
  detect this we just handle exception string.format() will throw.
]]

return
  function(num_hours)
    local num_hours_int, num_minutes = math.modf(num_hours)
    local num_minutes_int, num_seconds = math.modf(num_minutes * 60)
    num_seconds = num_seconds * 60
    local is_ok, result =
      pcall(
        string.format,
        '%02d:%02d:%02.0f',
        num_hours_int,
        num_minutes_int,
        num_seconds
      )
    if not is_ok then
      result = '?'
    end
    return result
  end
