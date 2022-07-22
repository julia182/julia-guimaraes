class SidebarMenuScreen < TestHelpers
  def account_spinner
    find_element(:id, 'com.monefy.app.lite:id/account_spinner')
  end

  def payment_card_text
    find_element(:uiautomator, 'new UiSelector().text("Payment card")')
  end
end