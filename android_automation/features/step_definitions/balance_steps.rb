Given "user is on balance screen" do
  ba = BalanceScreen.new
  ba.visit_balance_screen
end

When "clicks on expense button" do
  ba = BalanceScreen.new
  ba.expense_button.click
end

When "clicks on Clothes category" do
  ba = BalanceScreen.new
  $category = 'Clothes'
  ba.clothes_icon_button.click
end

When "clicks on income button" do
  ba = BalanceScreen.new
  ba.income_button.click
end

And "add {} value to it" do |value|
  $value = value
  ba = BalanceScreen.new
  ba.value_input value
end

And "add to category" do
  ba = BalanceScreen.new
  ba.add_to_category_button.click
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

And "has balance history" do
  $salary_value = 950
  $bill_value = 50
  step "clicks on income button"
  step "add #{$salary_value} value to it"
  step "choose \"Salary\" category"
  step "clicks on expense button"
  step "add #{$bill_value} value to it"
  step "choose \"Bills\" category"
end

When "clicks on balance button" do
  ba = BalanceScreen.new
  ba.balance_amount.click
end

Then "the balance details are displayed" do
  ba = BalanceScreen.new
  ba.validate_balance_details [$salary_value, $bill_value]
end

When "clicks on currencies button" do
  menu = ConfigMenuScreen.new
  menu.currencies_button.click
end

Then "a screen to buy Monefy Pro is shown" do
  menu = ConfigMenuScreen.new
  menu.validate_buy_monefy
end