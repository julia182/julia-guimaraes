class TestHelpers

  def tap_numeric_keyboard value
    value = value.capitalize
    case value
    when '.'
      value = 'Dot'
    when '+'
      value = 'Plus'
    when '='
      value = 'Equals'
    when 'x'
      value = 'Multiply'
    when '÷'
      value = 'Divide'
    when '-'
      value = 'Minus'
    else
      #nil
    end
    desired_id = 'com.monefy.app.lite:id/buttonKeyboard' + value

    driver.find_element(:id, desired_id).click
  end

end