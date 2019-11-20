require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'rspec'


require 'ffi'
require 'pry'


require 'date'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, { js_errors: false, chrome_options: ['--headless', '--no-sandbox', '--disable-dev-shm-usage', '--remote-debugging-port=9222']})
end

#Capybara.register_driver :selenium do |app| 
   # Capybara::Poltergeist::Driver.new(app, { js_errors: false, timeout: 300, phantomjs_options: [ '--debug=no', '--ssl-protocol=any', '--load-images=yes', '--ignore-ssl-errors=yes', '--output-encoding=utf8']}) 
  
#end


Capybara.configure do |config|
    config.default_driver = :selenium_chrome_headless

    config.app_host = 'https://des.quantumweb.com.br:4434/gofree/automatizado/site/'
end

#SitePrism.configure do |config|
 #config.use_implicit_waits = true
#end

Capybara.default_max_wait_time = 10
