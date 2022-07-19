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
