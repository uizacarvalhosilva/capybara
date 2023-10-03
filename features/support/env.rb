#a gem cucumber reseta a sessão a cada cenário
require 'capybara/cucumber'
#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'

#deixar o DSL e RSPEC global para rodar end to end , onde um cenário depende do outro 
#World(Capybara::DSL)
#World(Capybara::RSpecMatchers)




Capybara.configure do |config|
    #selenium selenium_chrome selenium_chrome_healess
    config.default_driver= :selenium_chrome
    config.app_host = 'http://localhost:3000/'
    config.default_max_wait_time = 5 #segundos
end