require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'webdrivers'
require 'site_prism'

Capybara.register_driver :selenium do |driver|
  Capybara::Selenium::Driver.new(driver, browser: :chrome)
end

Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :selenium
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 10
  config.app_host = 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
end