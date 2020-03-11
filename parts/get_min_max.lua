return
  function(calculator, field_name, start_value, finish_value)
    assert_table(calculator)
    assert_string(field_name)
    assert_integer(calculator[field_name])
    assert_function(calculator.run)
    assert_integer(start_value)
    assert_integer(finish_value)
    assert(start_value <= finish_value)

    local min_result = math.huge
    local max_result = -math.huge
    for cur_value = start_value, finish_value do
      calculator[field_name] = cur_value
      local result = calculator:run(cur_value)
      min_result = math.min(min_result, result)
      max_result = math.max(max_result, result)
    end

    return min_result, max_result
  end
