module ConfigMenuModule
  def add_account
    add_account_button.click
    new_account_name.send_keys 'Savings'
    savings_icon.click
    add_button.click
  end

  def validate_buy_monefy
    raise "App is not on buy Monefy Pro Activity" unless current_activity.eql? 'com.monefy.activities.buy.BuyMonefyActivity_'
  end
end