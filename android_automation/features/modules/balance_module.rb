module BalanceModule
  def visit_balance_screen
    start_activity app_package: "com.monefy.app.lite", app_activity: BalanceScreen::BALANCE_ACTIVITY if driver.current_activity != BalanceScreen::BALANCE_ACTIVITY
  end

  def value_input value
    value.to_s.each_char do |c|
      tap_numeric_keyboard c
    end
  end

  def choose_category_name name
    find_element(:uiautomator, "new UiSelector().textContains(\"#{name}\")").click
  end

  def format_value value
    if (value.to_s.scan '.').empty?
      formatted = value.reverse.scan(/\d{1,3}/).join(",").reverse + '.00'
    else
      splitted = value.to_s.split('.')
      formatted = splitted[0].reverse.scan(/\d{1,3}/).join(",").reverse + "." + splitted[1]
    end
    formatted
  end

  def validate_snackbar_message category, value
    formatted_value = format_value value
    expected_message = /#{category}: .*#{formatted_value}.* added/

    msg_gotten = balance_change_message.text

    raise "Message gotten is different than expected.\nGotten: #{msg_gotten}\nExpected: #{expected_message}" unless msg_gotten.match? expected_message
  end

  def validate_balance_amount value, type
    value = format_value value
    value_gotten = balance_amount.text
    if type != 'expense'
      expected_value = /#{value}/
    else
      expected_value = /-.*#{value}/
    end
    raise "Balance amount is different than expected.\nGotten: #{value_gotten}\nExpected amount: #{expected_value}" unless value_gotten.match? expected_value
  end

  def validate_balance_details args
    values = Array.new
    balance_details_values.each do |t|
      values << t.text.scan(/[1234567890,.]/).reduce(:+)
    end
    args.each do |a|
      a = format_value a.to_s
      raise "Balance values don't match" unless values.include? a
    end
    balance_details_categories_names.each do |b|
      raise "Balance categories don't match" unless ['Bills', 'Salary'].include? b.text
    end
  end
end