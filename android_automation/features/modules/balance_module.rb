module BalanceModule
  def visit_balance_screen
    start_activity app_package: "com.monefy.app.lite", app_activity: BalanceScreen::BALANCE_ACTIVITY if driver.current_activity != BalanceScreen::BALANCE_ACTIVITY
  end

  def value_input value
    raise "Value must be a number: #{value}" unless value.is_a? Numeric
    value.to_s.each_char do |c|
      tap_numeric_keyboard c
    end
  end

  def choose_category_name name
    find_element(:uiautomator, "new UiSelector().textContains(\"#{name}\")").click
  end

  def validate_snackbar_message category, value
    formatted_value = value.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
    expected_message = /#{category}: .*#{formatted_value}.* added/

    msg_gotten = balance_change_message.text
    binding.pry

    raise "Message gotten is different than expected.\nGotten: #{msg_gotten}\nExpected: #{expected_message}" unless msg_gotten.match? expected_message
  end

  def validate_balance_amount value, type = 'income'
    value_gotten = balance_amount.text
    if type != 'income'
      expected_value = /#{value}/
    else
      expected_value = /-.*#{value}/
    end
    raise "Balance amount is different than expected.\nGotten: #{value_gotten}\nExpected: #{value}" unless value_gotten.match? expected_value
  end
end