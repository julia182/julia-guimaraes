require 'appium_lib'
require 'appium_console'
require 'pry'
require_relative '../../features/modules/balance_module'
require_relative '../../features/modules/config_menu_module'
require_relative '../../features/support/helpers'
#require 'faker'

caps_txt = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true
opts = {caps: caps_txt[:caps]}
Appium::Driver.new(opts, true)
Appium.promote_appium_methods Object

