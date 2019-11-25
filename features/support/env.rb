require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'rspec'


require 'ffi'
require 'pry'


require 'date'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::chrome(
    chromeOptions: { args: %w(headless no-sandbox) }
  )

#   Capybara::Selenium::Driver.new app,
#     browser::chrome,
#     #desired_capabilities: capabilities
end




Capybara.configure do |config|
    config.default_driver = :selenium_chrome_headless

    

  
  config.app_host = 'https://des.quantumweb.com.br:4434/gofree/automatizado/site/'
end


Capybara.default_max_wait_time = 10
