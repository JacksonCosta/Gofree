require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'rspec'


require 'ffi'
require 'pry'


require 'date'


# Capybara.register_driver :selenium do |app|
# 	Capybara::Poltergeist::Driver.new(app, js_errors: false, :default_max_wait_time => 120, :timeout => 120)
# end


  Capybara.register_driver :selenium do |app| 
    Capybara::Poltergeist::Driver.new(app, { js_errors: false, timeout: 300, phantomjs_options: [ '--load-images=no', '--ignore-ssl-errors=yes', '--ssl-protocol=any']}) 
end

Capybara.configure do |config|
    config.default_driver = :selenium
        
    

  # config.app_host = 'https://des.quantumweb.com.br:4434/gofree/teste/site/'
  config.app_host = 'https://des.quantumweb.com.br:4434/gofree/automatizado/site/'
end

#SitePrism.configure do |config|
 #config.use_implicit_waits = true
#end

Capybara.default_max_wait_time = 10
