local daylight_calculator = request('!.mechs.lightday.cbm.interface')

local get_min_max = request('get_min_max')
local represent_time = request('represent_time')

local el_scrollbar_latitude = request('el_scrollbar_latitude')
local el_scrollbar_daynum = request('el_scrollbar_daynum')
local el_scrollbar_lightday = request('el_scrollbar_lightday')
local el_text_lightday = request('el_text_lightday')

local min_day_num = request('min_day_num')
local max_day_num = request('max_day_num')

local prev_latitude_deg = 91
local prev_day_number = -1

local update_lightday =
  function(app)
    daylight_calculator.latitude_deg = tonumber(el_scrollbar_latitude.Value)
    daylight_calculator.day_number = tonumber(el_scrollbar_daynum.Value)

    local same_lat = (daylight_calculator.latitude_deg == prev_latitude_deg)
    local same_day = (daylight_calculator.day_number == prev_day_number)
    prev_latitude_deg = daylight_calculator.latitude_deg
    prev_day_number = daylight_calculator.day_number

    if same_lat and same_day then
      return
    end

    local value = daylight_calculator:run()
    local time_value = represent_time(value)
    el_text_lightday:setValue('Text', time_value)
    value = tonumber(value)
    if value then
      el_scrollbar_lightday:setValue('Value', value)
      if not same_lat then
        local min_value, max_value =
          get_min_max(
            daylight_calculator,
            'day_number',
            min_day_num,
            max_day_num
          )
        el_scrollbar_lightday.Min = min_value
        el_scrollbar_lightday.Max = max_value
      end
    end
  end

return update_lightday
