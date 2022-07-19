Given "user is on balance screen" do
  ba = BalanceScreen.new
  ba.visit_balance_screen
end

When "clicks on expense button" do
  ba = BalanceScreen.new
  ba.expense_button.click
end

When "clicks on income button" do
  ba = BalanceScreen.new
  ba.income_button.click
end

And "add {int} value to it" do |value|
  $value = value
  ba = BalanceScreen.new
  ba.value_input value
end

And "choose {string} category" do |value|
  $category = value
  ba = BalanceScreen.new
  ba.choose_category_button.click
  ba.choose_category_name value
end

Then "a text is shown with the added value" do
  ba = BalanceScreen.new
  ba.validate_snackbar_message $category, $value
end

And "the balance amount is updated with the {string}" do |type|
  ba = BalanceScreen.new
  ba.validate_balance_amount $value, type
end