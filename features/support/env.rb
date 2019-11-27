require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'rspec'


require 'ffi'
require 'pry'


require 'date'


#Capybara.register_driver :selenium do |app|
    #Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end

Capybara.register_driver :selenium do |app| 
    Capybara::Poltergeist::Driver.new(app, { js_errors: false, timeout: 300, phantomjs_options: [ '--debug=no', '--ssl-protocol=any', '--load-images=yes', '--ignore-ssl-errors=yes', '--output-encoding=utf8']})
#, timeout: 300, phantomjs_options: [ '--debug=no', '--ssl-protocol=any', '--load-images=yes', '--ignore-ssl-errors=yes', '--output-encoding=utf8']}) 
    
#   }
end



#Capybara.register_driver :selenium do |app|
    #Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end

#Capybara.register_driver :selenium_chrome do |app|
   #options = ::Selenium::WebDriver::Chrome::Options.new
 
   #options.add_argument('--headless')
   #options.add_argument('--no-sandbox')
   #options.add_argument('--disable-dev-shm-usage')
   ##options.add_argument('--window-size=1400,1400')
 
   #Capybara::Selenium::Driver.new(app, browser: :chrome_headless, options: options)
   
 #end


Capybara.configure do |config|
    config.default_driver = :selenium

    

  
  config.app_host = 'https://des.quantumweb.com.br:4434/gofree/automatizado/site/'
end


Capybara.default_max_wait_time = 10
