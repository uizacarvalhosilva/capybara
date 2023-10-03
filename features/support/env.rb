#a gem cucumber reseta a sessão a cada cenário
require 'capybara/cucumber'
require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'


#deixar o DSL e RSPEC global para rodar end to end , onde um cenário depende do outro 
#World(Capybara::DSL)
#World(Capybara::RSpecMatchers)


BROWSER = ENV["BROWSER"]
AMBIENTE = ENV['AMBIENTE'] #chama o homolog ou producao

CONFIG = YAML.load_file(File.dirname(__FILE__) +"/ambientes/#{AMBIENTE}.yml") # carrega o homolog ou producao


Capybara.register_driver :selenium do |app|

    if BROWSER.eql?("chrome")
        Capybara::Selenium::Driver.new(app, :browser => :chrome,)
    elsif BROWSER.eql?("firefox")
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
    elsif BROWSER.eql?("ie")
        Capybara::Selenium::Driver.new(app, :browser => :edge)
    elsif BROWSER.eql?('safari')
        Capybara::Selenium::Driver.new(app, :browser => :safari)
    elsif BROWSER.eql?('poltergeist')
        options = { JS_ERRORS: FALSE }
        Capybara::Poltergeist::Driver.new(app, options)
    end
end





Capybara.configure do |config|
    #selenium selenium_chrome selenium_chrome_headless
    config.default_driver = :selenium
    ##config.app_host = 'http://localhost:3000/'
    config.app_host = CONFIG['url_padrao']
    CONFIG['user']
    config.default_max_wait_time = 5 #segundos
end