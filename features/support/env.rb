require 'capybara/cucumber'
require 'selenium-webdriver'


Capybara.configure do |config|
    #selenium selenium_chrome selenium_chrome_healess
    config.default_driver= :selenium_chrome
    config.app_host = 'http://localhost:3000/'
    config.default_max_wait_time = 5 #segundos
end