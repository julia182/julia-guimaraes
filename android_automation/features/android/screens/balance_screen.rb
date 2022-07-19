class BalanceScreen < TestHelpers
  include BalanceModule

  #Constants
  BALANCE_ACTIVITY = "com.monefy.activities.main.MainActivity_"

  #Buttons
  def expense_button
    driver.find_element(:id, 'com.monefy.app.lite:id/expense_button')
  end

  def income_button
    driver.find_element(:id, 'com.monefy.app.lite:id/income_button')
  end

  def choose_category_button
    driver.find_element(:id, 'com.monefy.app.lite:id/keyboard_action_button')
  end

  #EditText
  def balance_change_message
    driver.find_element(:id, 'com.monefy.app.lite:id/snackbar_text')
  end

  #TextView
  def balance_amount
    driver.find_element(:id, 'com.monefy.app.lite:id/balance_amount')
  end
end