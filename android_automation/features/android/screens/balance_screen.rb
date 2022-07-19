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

  def clothes_icon_button
    driver.find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.LinearLayout/androidx.viewpager.widget.ViewPager/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ImageView[8]')
  end

  def add_to_category_button
    find_element(:id, 'com.monefy.app.lite:id/keyboard_action_button')
  end

  def navigation_button
    find_element(:accessibility_id, "Open navigation")
  end

  #EditText
  def balance_change_message
    driver.find_element(:id, 'com.monefy.app.lite:id/snackbar_text')
  end

  #TextView
  def balance_amount
    driver.find_element(:id, 'com.monefy.app.lite:id/balance_amount')
  end

  def balance_details_categories_names
    driver.find_elements(:id, 'com.monefy.app.lite:id/textViewCategoryName')
  end

  def balance_details_values
    driver.find_elements(:id, 'com.monefy.app.lite:id/textViewWholeAmount')
  end
end