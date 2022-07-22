class ConfigMenuScreen
  include ConfigMenuModule
  #Buttons
  def config_menu_button
    find_element(:id, 'com.monefy.app.lite:id/overflow')
  end

  def accounts_button
    find_element(:id, 'com.monefy.app.lite:id/accounts_imagebutton')
  end

  def add_account_button
    find_element(:id, 'com.monefy.app.lite:id/imageButtonAddCategory')
  end

  def add_button
    find_element(:id, 'com.monefy.app.lite:id/save')
  end

  def new_account_type
    find_element(:id, 'com.monefy.app.lite:id/imageButtonAddCategory')
  end

  def savings_icon
    find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.GridView/android.widget.FrameLayout[4]/android.widget.FrameLayout/android.widget.ImageView')
  end

  def currencies_button
    find_element(:id, 'com.monefy.app.lite:id/currency_imagebutton')
  end

  #EditText
  def new_account_name
    find_element(:id, 'com.monefy.app.lite:id/editTextCategoryName')
  end
end