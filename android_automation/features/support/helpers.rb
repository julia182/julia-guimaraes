class TestHelpers

  def tap_numeric_keyboard value
    value = value.capitalize
    desired_id = 'com.monefy.app.lite:id/buttonKeyboard' + value

    # keyplus = :id, 'com.monefy.app.lite:id/buttonKeyboardPlus'
    # keyminus = :id, 'com.monefy.app.lite:id/buttonKeyboardMinus'
    # keymultiply = :id, 'com.monefy.app.lite:id/buttonKeyboardMultiply'
    # keydivide = :id, 'com.monefy.app.lite:id/buttonKeyboardDivide'
    # keyequals = :id, 'com.monefy.app.lite:id/buttonKeyboardEquals'
    # keydot = :id, 'com.monefy.app.lite:id/buttonKeyboardDot'

    driver.find_element(:id, desired_id).click
  end

end