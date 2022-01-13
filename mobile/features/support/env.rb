require 'rspec/expectations'
require 'appium_lib'
require 'pry'

caps = Appium.load_appium_txt file: File.join('./android.txt')
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object