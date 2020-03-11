local current_year = tonumber(os.date('%Y'))
local secs_per_day = 86400

return
  function(daynum)
    assert_integer(daynum)

    local time_pos =
      os.time({year = current_year, month = 1, day = 1}) +
      (daynum - 1) * secs_per_day

    local result = os.date('%Y-%m-%d', time_pos)

    return result
  end

