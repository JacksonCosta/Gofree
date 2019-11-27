require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'rspec'


require 'ffi'
require 'pry'


require 'date'

World Capybara::DSL
#BROWSER = ENV['BROWSER']

Capybara.default_driver = :selenium_chrome

#if BROWSER.eql?('remote')
  Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app,
      #:browser => :remote,
      #:desired_capabilities => :chrome,
      :url => "https://des.quantumweb.com.br:4434/gofree/automatizado/site/"
    )
  end
#else
  Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
#end




#Capybara.register_driver :chrome do |app|
  #Capybara::Selenium::Driver.new(app, browser: :chrome)
#end

#Capybara.register_driver :headless_chrome do |app|
  #capabilities = Selenium::WebDriver::Remote::chrome(
   # chromeOptions: { args: %w(headless no-sandbox) }
  #)

#end




#Capybara.configure do |config|
    #config.default_driver = :selenium_chrome_headless

    

  
  #config.app_host = 'https://des.quantumweb.com.br:4434/gofree/automatizado/site/'
#end


Capybara.default_max_wait_time = 10
