When "clicks on navigation button" do
  ba = BalanceScreen.new
  ba.navigation_button.click
end

And "clicks on account menu dropdown" do
  menu = SidebarMenuScreen.new
  menu.account_spinner.click
end

And "chooses Payment Card" do
  menu = SidebarMenuScreen.new
  menu.payment_card_text.click
end

Then "only the account selected is shown" do
  menu = SidebarMenuScreen.new
  menu.payment_card_text.displayed?
end

When "clicks on config button" do
  config_menu = ConfigMenuScreen.new
  config_menu.config_menu_button.click
end

And "clicks add account" do
  config_menu = ConfigMenuScreen.new
  config_menu.accounts_button.click
end

And "chooses account name and type" do
  config_menu = ConfigMenuScreen.new
  config_menu.add_account
end

Then "the account is created" do
  ba = BalanceScreen.new
  ba.validate_created_account
end